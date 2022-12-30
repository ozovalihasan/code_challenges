# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
  nodes = NodesList.new(graph.size)
  nodes.connect_by(graph)
  nodes.paths_from_first_to_last
end

class NodesList 
  attr_reader :nodes

  def initialize(length_of_list)
    @nodes = length_of_list.times.map do |val|
      Node.new(val)
    end
  end
  
  def connect_by(graph)
    graph.each_with_index do |next_nodes, index|
      nodes[index].next_nodes = next_nodes.map { |next_node| nodes[next_node] }
    end
  end

  def paths_from_first_to_last
    nodes.first.paths_to(nodes.last)
  end
end

class Node
  attr_accessor :next_nodes, :paths
  attr_reader :val
  
  def initialize(val)
    @next_nodes = []
    @val = val
    @paths = nil
  end

  def paths_to(last_node)
    return paths if paths

    self.paths = if self == last_node
                   [[val]]
                 elsif next_nodes.empty? 
                   []
                 else
                   next_nodes.flat_map do |node| 
                     node.paths_to(last_node)
                         .map {|path| [val] + path } 
                   end
                 end
  end
  
end