# @param {Integer[][]} edges1
# @param {Integer[][]} edges2
# @return {Integer}
def minimum_diameter_after_merge(edges1, edges2) 
  nodes1 = build_connections(edges1)
  nodes2 = build_connections(edges2)

  diameter1 = find_diameter(nodes1)
  diameter2 = find_diameter(nodes2)

  merged_diameter = ((diameter1 + 1) / 2) + ((diameter2 + 1) / 2) + 1
  [diameter1, diameter2, merged_diameter].max
end

def build_connections(edges)
  nodes = []

  edges.each do |start_point, end_point|
    nodes[start_point] ||= Node.new(start_point)
    nodes[end_point] ||= Node.new(end_point)

    nodes[start_point].connections << nodes[end_point]
    nodes[end_point].connections << nodes[start_point]
  end

  nodes
end

def find_diameter(nodes)
  @max_diameter = 0
  check_node(nodes[0]) if nodes[0]
  @max_diameter
end

def check_node(node)
  return 0 if node.checked

  node.checked = true
  
  results = node.connections.map do |next_node|
    check_node(next_node)
  end

  current_diameter = results.max(2).sum
  @max_diameter = current_diameter if current_diameter > @max_diameter
  results.max + 1
end

class Node
  attr_reader :label, :connections
  attr_accessor :checked

  def initialize(label)
    @label = label
    @connections = []
    @checked = false
  end
end
