import configparser

from dataset_generator.generator import Generator


def get_config(config_path):
    config = configparser.ConfigParser()
    config.read(config_path)
    
    return config


if __name__=='__main__':
    config = get_config('configs/dataset_generator_config.ini')
    generator = Generator(config)
    
    generator.generate_files()
    generator.make_dataset()
