import os
import configparser
import subprocess

import pandas as pd

from dataset_generator.utils import actions, get_name_without_extention

from src.preprocessor.graphs.ast.ast_graph import ASTGraph 

from src.preprocessor.embeddings.graph2vec_embed import graph2vec
from src.preprocessor.embeddings.node2vec_mean import get_mean_node_embed
from src.preprocessor.embeddings.stats_embed import get_stats_embedding


class Generator:
    def __init__(self, config):
        self.config = config
        self.out_files = []


    def generate_files(self):
        for file in self._get_files():
            out_asm_file, out_passes_asm_file, ret_code = self._gen_files(file)
            if ret_code == 0:
                self.out_files.append((out_asm_file, out_passes_asm_file, file))


    def make_dataset(self):
        data = []
        
        for out_asm_file, out_passes_asm_file, cpp_file in self.out_files:
            row = []
            row.append(cpp_file)
            
            out_asm_file_cnt = 0
            with open(out_asm_file) as f:
                out_asm_file_cnt = sum(1 for _ in f)
            
            out_passes_asm_file_cnt = 0
            with open(out_passes_asm_file) as f:
                out_passes_asm_file_cnt = sum(1 for _ in f)
            
            profit = (out_asm_file_cnt - out_passes_asm_file_cnt) / out_asm_file_cnt
            print(profit, cpp_file)
            
            graph = ASTGraph(cpp_file)
            
            embedding_list = self.config.get('DATASET', 'embedding').split('\n')[1:]

            if 'Graph2Vec' in embedding_list:
                embed = graph2vec(graph.G)
                for param in embed[0]:
                    row.append(param)
            
            if 'StatEmbed' in embedding_list:
                embed = get_stats_embedding(graph)
                for param in embed:
                    row.append(param)
                
            if 'Node2Vec' in embedding_list:
                embed = get_mean_node_embed(graph.G)
                # for param in embed[0]:
                #     row.append(param)
            
            row.append("some target")
            data.append(row)
            
        cols = [f'feature_{i}' for i in range(len(data[0]) - 2)]
        cols = ['name'] + cols + ['target']
        df = pd.DataFrame(data, columns=cols)
        
        path = self.config.get('DATASET', 'store_path')
        df.to_csv(path)


    def _get_files(self):
        file_list = []
        
        files = self.config.get('FILES', 'files').split('\n')
        file_list += list(map(lambda s: './data/' + s, files))
        
        dirs = self.config.get('FILES', 'dirs').split('\n')
        for dir in dirs:
            for root, _, files in os.walk("./data/" + dir):
                for file in files:
                    file_list.append(root + '/' + file)
        
        try:
            filter = set(self.config.get('FILES', 'filter').split('\n'))
        except configparser.NoOptionError:
            return file_list
            
        filtered_list = []
        for file in file_list:
            if file.split('.')[-1] in filter:
                filtered_list.append(file)
        
        return filtered_list
        

    def _gen_files(self, in_file):
        components, ir_file = self._get_components_for_get_ir(in_file)
        cp = subprocess.run(components, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if cp.returncode != 0:
            return "", "", cp.returncode
        
        components, out_asm_file = self._get_components_for_get_asm(ir_file, 's')
        cp = subprocess.run(components, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if cp.returncode != 0:
            return "", "", cp.returncode
        
        self._drop_optnone(ir_file)
        
        components, out_pass_file = self._get_components_for_custom_gen(ir_file)
        cp = subprocess.run(components, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if cp.returncode != 0:
            return "", "", cp.returncode

        components, out_passes_asm_file = self._get_components_for_get_asm(out_pass_file, 's-passes')
        cp = subprocess.run(components, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        return out_asm_file, out_passes_asm_file, cp.returncode


    def _get_components_for_get_ir(self, in_file):
        program_name = 'clang'
        flag_asm = '-S'
        flag_llvm = '-emit-llvm'
        opt_flag = '-O0'
        flag_name = '-o'
        
        file_name = get_name_without_extention(in_file)
        out_file = './generated_data/' + file_name.removeprefix('./data')[1:].replace('/', '.') + 'll'
        
        return [program_name, in_file, flag_asm, flag_llvm, opt_flag, flag_name, out_file], out_file
        

    def _get_components_for_custom_gen(self, in_file):
        program_name = 'opt'
        flag_asm = '-S'
        flag_passes = '-passes'
        # passes = "default<Oz>"
        passes = self._get_passes()
        flag_name = '-o'
        file_name = get_name_without_extention(in_file)
        out_file = file_name + 'll-passes'
        
        return [program_name, in_file, flag_asm, flag_passes, passes, flag_name, out_file], out_file


    def _get_components_for_get_asm(self, in_file, ext='s'):
        program_name = 'llc'
        flag_name = '-o'
        file_name = get_name_without_extention(in_file)
        out_file = file_name + ext
        
        return [program_name, in_file, flag_name, out_file], out_file


    def _get_passes(self):
        passes = ''
        
        pass_list = self.config.get('PASSES', 'pass_list').split('\n')[1:]
        for i, p in enumerate(pass_list):
            if i == 0:
                passes += f'{actions[p].value}'   
            else:
                passes += f',{actions[p].value}'

        return passes

    def _drop_optnone(self, ir_file):
        with open(ir_file, 'r') as f:
            old_data = f.read()
        new_data = old_data.replace('optnone', '')
        with open (ir_file, 'w') as f:
            f.write(new_data)
