import configparser

from preprocessor import Preprocessor


def get_config(config_path):
    config = configparser.ConfigParser()
    config.read(config_path)
    
    return config


if __name__=='__main__':
    config = get_config('configs/gen_dataset_config.ini')
    Preprocessor(config).GenerateDataset()
