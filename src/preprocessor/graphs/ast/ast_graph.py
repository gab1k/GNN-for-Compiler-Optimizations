import subprocess
import os
import json
from src.preprocessor.graphs.base_graph import GraphBase 


class ASTGraph(GraphBase):
    def __init__(self, path_to_cpp_file=None, temp_json_file="tmp/ast.json"):
        super().__init__()
        
        self._generate_ast_json(path_to_cpp_file, temp_json_file)
        
        with open(temp_json_file, 'r') as f:
            ast = json.load(f)
            self._parse_json(ast["id"], ast)

        os.remove(temp_json_file)


    def _generate_ast_json(self, cpp_path, json_path):
        os.makedirs(os.path.dirname(json_path), exist_ok=True)       
        cmd = [ "clang", "-Xclang", "-ast-dump=json", "-fsyntax-only", cpp_path ]
        
        with open(json_path, "w") as f:
            subprocess.run(cmd, stdout=f, stderr=subprocess.PIPE, check=True)


    def _parse_json(self, node, cur_json, parent_id=None):
        node_label = cur_json.get('kind', 'Unknown')  # Тип узла
        self.add_node(node, {'node_label': node_label})
        
        if parent_id:
            self.add_edge(parent_id, node)
        
        for child in cur_json.get('inner', []):
            if "id" not in child:
                continue
            self._parse_json(child["id"], child, node)

# пример
if __name__ == "__main__":
    cpp_file = "./data/samples/main.cpp"  # Укажите путь к вашему cpp-файлу
    graph = ASTGraph(path_to_cpp_file=cpp_file)
    
    print("Количество узлов:", graph.node_count())
    print("Количество ребер:", graph.edge_count())
    # print("Список узлов:", graph.nodes())
    # print("Список ребер:", graph.edges())
