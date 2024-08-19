# @param {Integer[]} vals
# @param {Integer[][]} edges
# @return {Integer}

"I couldn't solve the challenge"

def number_of_good_paths(vals, edges)
  tree = Tree.new(vals, edges)  
  values = Hash.new(0)
  tree.root.check
  vals.size + TreeNode.result
end

class Tree
  attr_reader :root
  
  def initialize(vals, edges)
    starting_node = 0
    nodes = { starting_node => TreeNode.new( vals[starting_node] )}
    edges.each do |node1, node2|
      if nodes[node1]
        nodes[node2] = TreeNode.new(vals[node2])
        nodes[node1].nodes << nodes[node2]
      else
        nodes[node1] = TreeNode.new(vals[node1])
        nodes[node2].nodes << nodes[node1]
      end
    end
    
    @root = nodes[starting_node]
    TreeNode.clear_result 
  end
  
end

class TreeNode
  attr_reader :nodes, :val
  
  def initialize(val)
    @nodes = []
    @val = val
  end
  
  def check
    records = Hash.new(0)
    records[val] += 1
    
    nodes.map! { |node| node.check.select { |sub_key, _| sub_key >= val } }

    union(records)
    
  end

  def union(records)
    records.merge!(*nodes) do |_, first, second|
      @@result += (first * second)
      first + second 
    end
    
    records
  end

  def self.result 
    @@result
  end

  def self.clear_result 
    @@result = 0
  end
end