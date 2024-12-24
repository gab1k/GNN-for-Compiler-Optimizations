from src.preprocessor.mode import ProcessMode, GraphMode
from src.preprocessor.graphs.ast.ast_graph import ASTGraph
from preprocessor.embeddings.node2vec_mean import get_mean_node_embed


class Preporcessor:
    def __init__(self, process_mode: ProcessMode=ProcessMode.NODE2VEC, graph_mode: GraphMode=GraphMode.AST):
        self.preprocess_switcher_ = {
            ProcessMode.ALL: self.handle_all, 
            ProcessMode.NODE2VEC: self.handle_node2vec,
        }
        self.process_func_ = self.preprocess_switcher_.get(process_mode, self.handle_empty)
        
        self.graph_switcher_ = {
            GraphMode.AST: self.get_graph_ast, 
        }
        self.graph_func_ = self.graph_switcher_.get(graph_mode, self.handle_empty)


    def process(self, file):
        graph = self.graph_func_(file)
        return self.process_func_(graph)
    
    def handle_all(self, graph):
        pass
    
    def handle_node2vec(self, graph):
        return get_mean_node_embed(graph)
    
    def handle_empty(self, mode):
        raise "Incorrect mode"

    def get_graph_ast(self, file):
        return ASTGraph(file)
