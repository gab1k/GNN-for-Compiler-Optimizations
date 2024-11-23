.PHONY: all

all: run-app run-gen-dataset run-save-model

run-app:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/app/main.py

run-gen-dataset:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/gen_dataset/main.py

run-save-model:
	PYTHONPATH=./src:$(PYTHONPATH) python cmd/save_model/main.py

.PHONY: clean

make-dependency-graph-easy-project:
	python3 src/graphs/dependency_graph/dependency_graph.py data/easy_project data/easy_project/dependency_graph

clean:
	rm -rf ./generated_data/*
