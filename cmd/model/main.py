import configparser

import pandas as pd

from sklearn.model_selection import train_test_split

from src.model.model import Model


def get_config(config_path):
    config = configparser.ConfigParser()
    config.read(config_path)
    
    return config

if __name__== '__main__':
    config = get_config('configs/dataset_generator_config.ini')

    data = pd.read_csv('dataset.csv')
    feature_columns = [f'feature_{i}' for i in range(1, 37)]

    X = data[feature_columns]
    y = data['target']
    
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42) # Тут достаем свои 

    catboost_model = Model(model_type="catboost", input_dim=4, num_clusses=3) 
    pytorch_model = Model(model_type="pytorch", input_dim=X_train.shape[1], num_clusses=len(set(y_train)))

    catboost_model.fit(X_train, y_train)
    pytorch_model.fit(X_train, y_train)

    catboost_model.save()
    pytorch_model.save()
