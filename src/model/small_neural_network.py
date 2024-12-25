import os

import torch
import torch.nn as nn
from torch.utils.data import DataLoader, TensorDataset
from torch.optim import Adam

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import classification_report


class PyTorchMLPClassifier:
    def __init__(self, input_dim=None, num_classes=None, learning_rate=0.03, num_epochs=50, batch_size=8):
        self.learning_rate = learning_rate
        self.num_epochs = num_epochs
        self.batch_size = batch_size
        self.input_dim = input_dim
        self.num_classes = num_classes
        self.model = None
        self.scaler = None  # Для нормализации данных

    class MLP(nn.Module):
        def __init__(self, input_dim, num_classes):
            super().__init__()
            self.network = nn.Sequential(
                nn.Linear(input_dim, 64),
                nn.ReLU(),
                nn.Dropout(0.5),
                nn.Linear(64, 32),
                nn.ReLU(),
                nn.Linear(32, num_classes)
            )

        def forward(self, x):
            return self.network(x)

    def fit(self, X, y):
        X_train, X_val, y_train, y_val = train_test_split(X, y, test_size=0.2, random_state=42)

        self.scaler = StandardScaler()
        X_train = self.scaler.fit_transform(X_train)
        X_val = self.scaler.transform(X_val)

        X_train_tensor = torch.tensor(X_train, dtype=torch.float32)
        y_train_tensor = torch.tensor(y_train.values, dtype=torch.long)
        X_val_tensor = torch.tensor(X_val, dtype=torch.float32)
        y_val_tensor = torch.tensor(y_val.values, dtype=torch.long)

        train_ds = TensorDataset(X_train_tensor, y_train_tensor)
        train_loader = DataLoader(train_ds, batch_size=self.batch_size, shuffle=True)

        if self.input_dim is None:
            self.input_dim = X.shape[1]
        if self.num_classes is None:
            self.num_classes = len(y.unique())
        self.model = self.MLP(self.input_dim, self.num_classes)

        criterion = nn.CrossEntropyLoss()
        optimizer = Adam(self.model.parameters(), lr=self.learning_rate)

        for epoch in range(self.num_epochs):
            self.model.train()
            total_loss = 0
            for X_batch, y_batch in train_loader:
                optimizer.zero_grad()
                outputs = self.model(X_batch)
                loss = criterion(outputs, y_batch)
                loss.backward()
                optimizer.step()
                total_loss += loss.item()
            print(f"Epoch [{epoch+1}/{self.num_epochs}], Loss: {total_loss:.4f}")

        self.model.eval()
        with torch.no_grad():
            y_val_pred = self.model(X_val_tensor).argmax(dim=1)
        print(classification_report(y_val_tensor, y_val_pred))


    def predict(self, X):
        X = self.scaler.transform(X)
        X_tensor = torch.tensor(X, dtype=torch.float32)
        self.model.eval()
        with torch.no_grad():
            y_pred = self.model(X_tensor).argmax(dim=1).numpy()
        return y_pred


    def save(self, model_path="pytorch_small_model.pth"):
        if self.model is None:
            raise ValueError("Модель пока не обучена! Сначала вызовите fit().")
        torch.save({
            'model_state_dict': self.model.state_dict(),
            'scaler': self.scaler
        }, model_path)
        print(f"Модель успешно сохранена в {model_path}")


    def load(self, model_path="pytorch_small_model.pth"):
        if not os.path.exists(model_path):
            raise FileNotFoundError(f"Файл {model_path} не найден.")
        checkpoint = torch.load(model_path)
        self.scaler = checkpoint['scaler']
        self.model = self.MLP(self.input_dim, self.num_classes)
        self.model.load_state_dict(checkpoint['model_state_dict'])
        self.model.eval()
        print(f"Модель успешно загружена из {model_path}")



if __name__ == "__main__":
    from sklearn.datasets import load_iris
    import pandas as pd
    from sklearn.metrics import balanced_accuracy_score

    data = load_iris()
    X = pd.DataFrame(data.data, columns=data.feature_names)
    y = pd.Series(data.target)# Классы (0, 1, 2)

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    
    pytorch_classifier = PyTorchMLPClassifier(num_epochs=20)
    pytorch_classifier.fit(X_train, y_train)

    pytorch_classifier.save("pytorch_mlp_model.pth")

    loaded_classifier = PyTorchMLPClassifier(input_dim=X_train.shape[1], num_classes=len(set(y_train)))
    loaded_classifier.load("pytorch_mlp_model.pth")

    predictions = loaded_classifier.predict(X_test)
    print(f"Balanced accuracy score на тестовой выборке =\n{balanced_accuracy_score(y_test, predictions)}")
