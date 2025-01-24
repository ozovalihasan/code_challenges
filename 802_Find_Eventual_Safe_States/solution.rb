# @param {Integer[][]} graph
# @return {Integer[]}
def eventual_safe_nodes(graph)
  @graph = graph
  @checked = {}
  @terminal_nodes = {}

  graph.each_index {|node_index| terminal_node?(node_index) unless @checked[node_index] }
  
  @terminal_nodes.keys.sort
end

def terminal_node?(node_index)
  return @terminal_nodes[node_index] if @checked[node_index]

  @checked[node_index] = true

  if @graph[node_index].map! {|next_node_index| terminal_node?(next_node_index) }.all?(true)
    @terminal_nodes[node_index] = true 
  end
end
