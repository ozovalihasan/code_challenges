# @param {Integer} node_size
# @param {Integer[]} left_child
# @param {Integer[]} right_child
# @return {Boolean}
def validate_binary_tree_nodes(node_size, left_child, right_child)
  possible_root_nodes = (0...node_size).to_a - left_child - right_child
  return false if possible_root_nodes.size != 1

  @checked = Array.new(node_size)
  @left_child = left_child
  @right_child = right_child

  root_node_index = possible_root_nodes[0]
  check_node(root_node_index) && @checked.all?(true)
end

def check_node(node_index)
  return false if @checked[node_index]

  @checked[node_index] = true
  left_node = @left_child[node_index]
  right_node = @right_child[node_index]
  (left_node == -1 || check_node(left_node)) && (right_node == -1 || check_node(right_node))
end
