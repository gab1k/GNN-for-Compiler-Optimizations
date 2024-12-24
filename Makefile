.PHONY: all

all: gen-dataset save-model app

.PHONY: install

install:
	pip install -r requirements.txt
	brew install llvm # for mac os. If linux change it

.PHONY: clean

clean:
	rm -rf ./generated_data/*

gen-dataset:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/dataset_generator/main.py

save-model:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/model/main.py

app:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/app/main.py

check-ast:
	PYTHONPATH=./src:$(PYTHONPATH) python src/model/graphs/ast/ast_graph.py
