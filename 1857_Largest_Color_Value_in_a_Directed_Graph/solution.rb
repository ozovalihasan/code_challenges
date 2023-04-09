# @param {String} colors
# @param {Integer[][]} edges
# @return {Integer}
def largest_path_value(colors, edges)
  nodes = colors.chars.map.with_index do |color, index|
            Node.new(color, index)  
          end

  edges.each do |val, connected_node_val|
    nodes[ val ].leaving_nodes << nodes[ connected_node_val ]
    nodes[ connected_node_val ].entering_nodes << nodes[ val ]
  end

  @max_color_val = 0

  nodes.each {|node| check_colors(node) if  node.entering_nodes.empty? }

  return -1 if @max_color_val.zero? || nodes.any? {|node| node.color_counts.nil?}

  @max_color_val
end

def check_colors(node, coming_node_colors = nil)
  
  if coming_node_colors
    node.checked_entering_nodes_count += 1
  else
    coming_node_colors = {}
  end
  
  node.color_counts = Hash.new(0) unless node.color_counts
    
  node.color_counts.merge!(coming_node_colors) do |key, old_val, new_val|
    old_val > new_val ? old_val : new_val
  end

  if node.checked_entering_nodes_count == node.entering_nodes.count
    node.color_counts[node.color] += 1
    
    if node.leaving_nodes.empty?

      @max_color_val = (node.color_counts.values << @max_color_val).max
      
    else 
      
      node.leaving_nodes.each do |leaving_node|
        check_colors(leaving_node, node.color_counts)
      end
      
    end
  end
  
end

class Node
  attr_reader :color, :val, :leaving_nodes, :entering_nodes
  attr_accessor :color_counts, :checked, :checked_entering_nodes_count

  def initialize(color, val)
    @val = val
    @color = color
    @leaving_nodes = []
    @entering_nodes = []
    @color_counts = nil 
    @checked_entering_nodes_count = 0
  end
end