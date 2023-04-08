# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
  return if node.nil?

  nodes = {}
  clone(node, nodes)
end

def clone(node, nodes)
  return nodes[node.val] if nodes[node.val]

  nodes[node.val] = Node.new(node.val)
  clone_node = nodes[node.val]
  
  clone_node.neighbors = node.neighbors.map do |neighbor_node|
    clone(neighbor_node, nodes)
  end

  clone_node
end
