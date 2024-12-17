import configparser

from app.app import App


def get_config(config_path):
    config = configparser.ConfigParser()
    config.read(config_path)
    
    return config


if __name__=='__main__':
    config = get_config('configs/app.ini')
    App(config).run("./data/samples/loop.cpp")
