class Generator:
    def __init__(self, config):
        self.msg = config.get('DEFAULT', 'msg')
    
    def Generate(self):
        print(self.msg)
