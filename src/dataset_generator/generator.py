import os
import configparser
import subprocess

from dataset_generator.utils import actions


class Generator:
    def __init__(self, config):
        self.config = config


    def generate(self):
        for file in self._get_files():
            self._gen_file(file)
        # components = self._get_components()
        # subprocess.run(components)
        # для упрощения - будем дропать по9следовательности с некорректными вводными (перепутан порядок модульных и функциональных)
        # opt -S -passes='always-inline,adce' a.1 -o a.3
    

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
        

    def _gen_file(self, file):
        components = self._get_components_for_custom_gen(file)
        subprocess.run(components)


    def _get_components_for_custom_gen(self, in_file):
        program_name = 'opt'
        flag_asm = '-S'
        flag_passes = '-passes'
        passes = self._get_passes()
        flag_name = '-o'
        out_file = './generated_data' + in_file.removeprefix('./data')
        
        return [program_name, in_file, flag_asm, flag_passes, passes, flag_name, out_file]


    def _get_passes(self):
        passes = ''
        
        pass_list = self.config.get('PASSES', 'pass_list').split('\n')
        for p in pass_list:
            passes += f',{actions[p].value}'

        return passes
