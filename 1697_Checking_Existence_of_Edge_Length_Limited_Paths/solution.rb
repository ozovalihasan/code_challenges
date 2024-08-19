# @param {Integer} n
# @param {Integer[][]} edge_list
# @param {Integer[][]} queries
# @return {Boolean[]}
"I couldn't solve"
def distance_limited_paths_exist(n, edge_list, queries)
  nodes = Array.new(n) {|index| Node.new(index)}
  
  edge_list.each do |first_node_index, second_node_index, distance|
    nodes[first_node_index].connected_nodes << [distance, nodes[second_node_index]]
    nodes[second_node_index].connected_nodes << [distance, nodes[first_node_index]]
  end

  nodes.each do |node|
    node.connected_nodes.sort_by!(&:first)
  end

  connected = Array.new(n, nil)
  check_connected(connected, nodes)
  
  result = []
  queries.each do |start_node_index, end_node_index, limit|
    next result << false unless connected[start_node_index] == connected[end_node_index]

    @found = false
    check_query( nodes[start_node_index], nodes[end_node_index], limit, [] )
    result << @found 
  end

  result
end

def check_connected(connected, nodes)
  nodes.each_with_index do |node, index|
    next if connected[index]
    mark_connection_label(node, connected, index)
  end
  
end

def mark_connection_label(node, connected, label)
  return if connected[node.val]

  connected[node.val] = label
  node.connected_nodes.each {|_, selected_node| mark_connection_label(selected_node, connected, label) }
end

def check_query(start_node, end_node, limit, checked)
  return if checked[start_node.val] || @found
  return @found = true if start_node == end_node

  checked[start_node.val] = true

  start_node.connected_nodes.each do |distance, next_node|
    break if (distance >= limit) || @found

    check_query(next_node, end_node, limit, checked)
  end
end

class Node
  attr_reader :val, :connected_nodes
  
  def initialize(val)
    @val = val
    @connected_nodes = []
  end
end