from src.model.catboost_model import CatBoostClassifierWrapper
from src.model.small_neural_network import PyTorchMLPClassifier
class Model():
    def __init__(self, model_type, input_dim, num_clusses, model_args=None):
        self.model_args = model_args
        self.model_type = model_type
        self.input_dim = input_dim
        self.num_clusses = num_clusses
        self._get_model_type()

    def _get_model_type(self):
        if self.model_type == "catboost":
            self.model_wrapper = CatBoostClassifierWrapper()
        elif self.model_type == "pytorch":
            self.model_wrapper = PyTorchMLPClassifier(input_dim=self.input_dim, num_classes=self.num_clusses)

    def fit(self, X_train, y_train):
        self.model_wrapper.fit(X_train, y_train)

    def predict(self, X_test):
        return self.model_wrapper.predict(X_test)

    def save(self):
        self.model_wrapper.save()
    
    def load(self):
        self._get_model_type()
        self.model_wrapper.load()
