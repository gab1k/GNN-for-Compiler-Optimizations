import os

from catboost import CatBoostClassifier

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import classification_report


class CatBoostClassifierWrapper:
    def __init__(self, iterations=200, depth=3, learning_rate=0.1):

        self.iterations = iterations
        self.depth = depth
        self.learning_rate = learning_rate
        self.model = None

    def fit(self, X, y):
        X_train, X_val, y_train, y_val = train_test_split(X, y, test_size=0.2, random_state=42)

        self.model = CatBoostClassifier(
            iterations=self.iterations,
            depth=self.depth,
            learning_rate=self.learning_rate,
            loss_function='MultiClass',
            verbose=50
        )
        self.model.fit(X_train, y_train, eval_set=(X_val, y_val), verbose=50)
        y_val_pred = self.model.predict(X_val)
        print(classification_report(y_val, y_val_pred))

    def predict(self, X):
        return self.model.predict(X)
    
    def save(self, model_path="catboost_model.cbm"):
        if self.model is None:
            raise ValueError("Модель пока не обучена! Сначала вызовите fit().")
        self.model.save_model(model_path)
        print(f"Модель успешно сохранена в {model_path}")

    def load(self, model_path="catboost_model.cbm"):
        if not os.path.exists(model_path):
            raise FileNotFoundError(f"Файл {model_path} не найден.")
        self.model = CatBoostClassifier()
        self.model.load_model(model_path)
        print(f"Модель успешно загружена из {model_path}")


if __name__ == "__main__":
    from sklearn.datasets import load_iris
    import pandas as pd
    from sklearn.metrics import balanced_accuracy_score

    data = load_iris()
    X = pd.DataFrame(data.data, columns=data.feature_names)
    y = pd.Series(data.target)# Классы (0, 1, 2)

    # Тут свои x_train, y_train
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)


    catboost_classifier = CatBoostClassifierWrapper(iterations=300, depth=4, learning_rate=0.05)
    catboost_classifier.fit(X_train, y_train)

    catboost_classifier.save()

    loaded_catboost_classifier = CatBoostClassifierWrapper()
    loaded_catboost_classifier.load()

    predictions = loaded_catboost_classifier.predict(X_test)
    print(f"Balanced accuracy score на тестовой выборке =\n{balanced_accuracy_score(y_test, predictions)}")
