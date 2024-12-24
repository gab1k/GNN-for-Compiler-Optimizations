import os
import configparser
import subprocess

from dataset_generator.utils import actions, get_name_without_extention


class Generator:
    def __init__(self, config):
        self.config = config


    def generate(self):
        for file in self._get_files():
            self._gen_files(file)


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
        subprocess.run(components)
        
        components, out_pass_file = self._get_components_for_custom_gen(ir_file)
        subprocess.run(components)
        
        components, out_asm_file = self._get_components_for_final_asm(out_pass_file)
        subprocess.run(components)

        return out_asm_file


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
        passes = self._get_passes()
        flag_name = '-o'
        file_name = get_name_without_extention(in_file)
        out_file = file_name + 'll-out-pass'
        
        return [program_name, in_file, flag_asm, flag_passes, passes, flag_name, out_file], out_file

       
    def _get_components_for_final_asm(self, in_file):
        program_name = 'llc'
        flag_name = '-o'
        file_name = get_name_without_extention(in_file)
        out_file = file_name + '.S'
        
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
