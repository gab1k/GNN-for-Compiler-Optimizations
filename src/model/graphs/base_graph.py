import networkx as nx

class GraphBase:

    def __init__(self, is_directed=False):
        self.G = nx.DiGraph()

    def add_node(self, node, attr=None):
        self.G.add_node(node, attr=attr)

    def add_edge(self, n_from, n_to, weight=None):
        self.G.add_edge(n_from, n_to, weight=weight)
    
    def node_count(self):
        return self.G.number_of_nodes()

    def edge_count(self):
        return self.G.number_of_edges()
    
    def neighborn(self, node=None):
        return list(self.G.neighbors(node))
    
    def nodes(self):
        return list(self.G.nodes)
    
    def edges(self):
        return list(self.G.edges)
    

