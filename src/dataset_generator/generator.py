from dataset_generator.utils import actions


class Generator:
    def __init__(self, config):
        self.pass_list = config.get('PASSES', 'pass_list').split('\n')
    
    def Generate(self):
        out = ''
        for p in self.pass_list:
            out += f',{actions[p].value}'
        print(out)

        # для упрощения - будем дропать последовательности с некорректными вводными (перепутан порядок модульных и функциональных)
