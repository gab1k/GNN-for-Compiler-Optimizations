from src.preprocessor.preprocessor import Preporcessor


class App:
    def __init__(self, config):
        self.config = config

    def run(self, file):
        preprocessor = Preporcessor()
        embeding = preprocessor.process(file)
        print(embeding)
