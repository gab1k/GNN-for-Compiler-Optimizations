.PHONY: all

all: run-gen-dataset run-save-model run-app

.PHONY: install

install:
	pip install -r requirements.txt

.PHONY: clean

clean:
	rm -rf ./generated_data/*

run-gen-dataset:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/dataset_generator/main.py

run-save-model:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/model/main.py

run-app:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/app/main.py
