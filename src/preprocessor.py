class Preprocessor:
    def __init__(self, config):
        self.msg = config.get('DEFAULT', 'msg')
    
    def GenerateDataset(self):
        print(self.msg)
