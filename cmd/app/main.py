import configparser

from app.app import App
from src.model.model import Model

def get_config(config_path):
    config = configparser.ConfigParser()
    config.read(config_path)
    
    return config


if __name__=='__main__':
    # config = get_config('configs/app.ini')
    # App(config).run("./data/samples/loop.cpp")

    config = get_config('configs/dataset_generator_config.ini')

    data = load_iris()
    X = pd.DataFrame(data.data, columns=data.feature_names)
    y = pd.Series(data.target)

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42) # Тут достаем свои 
    
    catboost_model = Model(model_type="catboost", input_dim=4, num_clusses=3) 
    pytorch_model = Model(model_type="pytorch", input_dim=4, num_clusses=3)

    catboost_model.load()
    pytorch_model.load()
    print(f"Catboost balanced accuracy: {balanced_accuracy_score(y_test, catboost_model.predict(X_test))}")
    print(f"Pytorch balanced accuracy: {balanced_accuracy_score(y_test, pytorch_model.predict(X_test))}")
