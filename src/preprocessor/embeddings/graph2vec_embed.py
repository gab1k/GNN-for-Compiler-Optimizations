import networkx as nx
from karateclub import Graph2Vec
from src.preprocessor.graphs.ast.ast_graph import ASTGraph 
from copy import deepcopy

def fix_graph_indexing(graphs):
    fixed_graphs = []
    for graph in graphs:
        fixed_graphs.append(nx.convert_node_labels_to_integers(graph, first_label=0))
    return fixed_graphs

def graph2vec(G_, dimensions=32, wl_iterations=2):  # 32 размерность эмбеддинга, 2 WL-итерации
    G = deepcopy(G_)
    nx.set_node_attributes(G, {n: str(G.degree(n)) for n in G.nodes}, name='label')
    nx.set_edge_attributes(G, 1, 'weight')
    model = Graph2Vec(dimensions=dimensions, wl_iterations=wl_iterations)
    model.fit(fix_graph_indexing([G]))
    return model.get_embedding()


if __name__ == "__main__":
    file_names = [
        'bzlib.c',
        ]
    paths = [f'data/samples/{file}' for file in file_names]
    for path in paths:
        graph = ASTGraph(path_to_cpp_file=path)
        print(f"Файл {path}")
        print(f"Эмбединг : {graph2vec(graph.G)}")
        print("------------------------------------------")
        break