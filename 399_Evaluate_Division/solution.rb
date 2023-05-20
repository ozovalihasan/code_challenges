# @param {String[][]} equations
# @param {Float[]} values
# @param {String[][]} queries
# @return {Float[]}
def calc_equation(equations, values, queries)
  nodes = set_nodes equations, values
  label_connected nodes
  find_result_of queries, nodes
end

def find_result_of queries, nodes
  queries.map! do |first_node, second_node|
    first_node = nodes[first_node]
    second_node = nodes[second_node]

    next -1.0 unless same_group? first_node, second_node
    
    second_node.val / first_node.val
  end
end

def same_group? first_node, second_node
  first_node && second_node && first_node.group_index == second_node.group_index
end

def set_nodes equations, values
  nodes = {}
  
  equations.zip(values).each do |(node1, node2), value|
    node1 = (nodes[node1] ||= Node.new)
    node2 = (nodes[node2] ||= Node.new)
    
    node1.connected << [node2, value]
    node2.connected << [node1, 1.0 / value]
  end

  nodes
end

def label_connected nodes
  group_index = 0
  nodes.values.each do |node|
    next if node.group_index

    group_index += 1
    check_node_group node, group_index, 1.0
  end
end

def check_node_group node, group_index, val
  return if node.group_index

  node.group_index = group_index
  node.val = val

  node.connected.each do |next_node, next_node_val|
    check_node_group next_node, group_index, next_node_val * val
  end
end

class Node
  attr_reader :connected
  attr_accessor :group_index, :val

  def initialize
    @connected = []
    @group_index = nil
    @val = nil
  end
end