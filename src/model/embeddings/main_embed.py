from src.model.graphs.ast.ast_graph import AstGraph 
from src.model.embeddings.stats_embed import get_stats_embedding 
from src.model.embeddings.graph2vec import get_mean_node_embed 


if __name__ == "__main__":
    file_names = [
        'bzlib.c',
        'main.cpp',
        'loop.cpp'
        ]
    paths = [f'data/samples/{file}' for file in file_names]
    for path in paths:
        graph = AstGraph(path_to_cpp_file=path)
        print(f"Файл {path}")
        print(f"Эмбединг статистик: {get_stats_embedding(graph)}")
        print(f"Эмбед из нод: {get_mean_node_embed(graph)}")
        print("------------------------------------------")
        break
