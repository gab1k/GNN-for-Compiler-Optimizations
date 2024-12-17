from src.preprocessor.graphs.base_graph import GraphBase 

def get_stats_embedding(G: GraphBase) -> dict[str, int]:
    res = {
        'num_nodes': G.node_count(),
        'num_edges': G.edge_count(),
        'density': G.density(),
        'average_clustering': G.average_clustering(),
        'average_degree': G.average_degree(),
        # 'is_connected': G.is_connected()
    }
    return res
