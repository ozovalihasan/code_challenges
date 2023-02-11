# @param {Integer} n
# @param {Integer[][]} red_edges
# @param {Integer[][]} blue_edges
# @return {Integer[]}
def shortest_alternating_paths(n, red_edges, blue_edges)
  nodes = (0...n).map {|val| Node.new(val) }

  red_edges.each do |start_val, end_val|
    Edge.new(nodes[start_val], nodes[end_val], :red)
  end

  blue_edges.each do |start_val, end_val|
    Edge.new(nodes[start_val], nodes[end_val], :blue)
  end

  current_edges = []
  current_edges.concat nodes[0].leaving_red_edges
  current_edges.concat nodes[0].leaving_blue_edges
  result = Array.new(n, -1)
  nodes[0].visited_by_blue_edge = true
  nodes[0].visited_by_red_edge = true
  step = 1  

  current_edges.each do |edge|
    result[edge.end_node.val] = step
  end

  until current_edges.empty?
    current_edges.map! do |edge|
      if edge.color == :blue && edge.end_node.visited_by_blue_edge == false
        edge.end_node.visited_by_blue_edge = true
        edge.end_node.leaving_red_edges 
      elsif edge.color == :red && edge.end_node.visited_by_red_edge == false
        edge.end_node.visited_by_red_edge = true
        edge.end_node.leaving_blue_edges 
      else
        []
      end
    end

    current_edges.flatten!(1)
    step += 1

    current_edges.each do |edge|
      if result[edge.end_node.val] == -1
        result[edge.end_node.val] = step
      end
    end
  end

  result[0] = 0
  result
end

class Edge
  attr_reader :start_node, :end_node, :color

  def initialize(start_node, end_node, color)
    @start_node = start_node
    if color == :red
      start_node.leaving_red_edges << self 
    else
      start_node.leaving_blue_edges << self 
    end
    
    @end_node = end_node
    @color = color
  end
end

class Node
  attr_accessor :visited_by_red_edge, :visited_by_blue_edge
  attr_reader :val, :leaving_red_edges, :leaving_blue_edges
  def initialize(val)
    @val = val
    @leaving_red_edges = []
    @leaving_blue_edges = []
    @visited_by_red_edge = false
    @visited_by_blue_edge = false
  end
end