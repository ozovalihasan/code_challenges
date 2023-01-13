# @param {Integer[]} parent
# @param {String} s
# @return {Integer}
def longest_path(parent, s)
  tree = Tree.new(parent, s)
  result = []
  tree.root.check(result)
  result.max
end

class Tree
  attr_reader :root
  
  def initialize(parent, s)
    nodes = {}
    nodes[-1] = TreeNode.new(nil)
    s = s.split("")
    
    parent.each_with_index do |parent_node, index|
      nodes[index] = TreeNode.new( s[index] ) 
    end

    parent.each_with_index do |parent_node, index|
      nodes[parent_node].nodes << nodes[index]
    end

    @root = nodes[0]
  end
  
end

class TreeNode
  attr_reader :nodes, :label
  
  def initialize(label)
    @nodes = []
    @label = label
  end

  def check(result)
    [1, label] if nodes.empty?
    
    path_sizes_of_selected_nodes = nodes.map {|node| node.check(result) }
                                        .filter_map {|node_path_size, node_label| node_path_size if node_label != label}
            
    result << case path_sizes_of_selected_nodes.size
              when 0
                1
              when 1
                1 + path_sizes_of_selected_nodes.first
              else
                1 + path_sizes_of_selected_nodes.max(2).sum
              end
    
    [1 + (path_sizes_of_selected_nodes.max || 0), label] 
  end
end