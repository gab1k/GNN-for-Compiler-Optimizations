from src.preprocessor.graphs.base_graph import GraphBase 
import networkx as nx
from node2vec import Node2Vec
import numpy as np
import copy 

def get_mean_node_embed(G: GraphBase, node_embed_size=64, walk_length=30, num_walks=200, workers=4):

    node2vec = Node2Vec(G.G, dimensions=node_embed_size, walk_length=walk_length, num_walks=num_walks, workers=workers)
    model = node2vec.fit(window=10, min_count=1, batch_words=4)

    # embeddings = {node: model.wv[node] for node in G.G.nodes()}  # каждой ноде даем эмбед
    embeddings = [model.wv[node] for node in G.G.nodes()]
    return np.mean(embeddings, axis=0) # вернем среднее эмбеда каждой ноды
