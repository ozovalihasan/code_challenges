# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
def count_pairs(n, edges)
  return pairs_count(n) - edges.size if edges.size <= 1
  
  nodes = create_nodes(n)
  build_connections(edges, nodes)

  group_sizes = []
  nodes.each do |node|
    next if node.checked

    node.reset_group_count
    node.check
    group_sizes << node.group_nodes_count
  end

  pairs_count(n) - group_sizes.sum {|num| pairs_count(num)}
end

def create_nodes(n)
  n.times.map { Node.new }
end

def build_connections(edges, nodes)
  edges.each do |node1, node2|
    nodes[node1].connected_nodes << nodes[node2]
    nodes[node2].connected_nodes << nodes[node1]
  end
end

def pairs_count(nodes_number)
  nodes_number * (nodes_number - 1) / 2
end

class Node
  attr_accessor :checked
  attr_reader :connected_nodes
  
  def initialize
    @connected_nodes = []
    @checked = false
  end

  def check
    return if checked
  
    self.checked = true
    self.group_nodes_count += 1
    
    connected_nodes.each(&:check)
  end

  def reset_group_count
    @@group_nodes_count = 0
  end

  def group_nodes_count
    @@group_nodes_count
  end

  def group_nodes_count= num
    @@group_nodes_count = num
  end
end