# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def width_of_binary_tree(root)
  @nodes_on_same_depth = []
  
  check root

  @nodes_on_same_depth.map { |indices| indices.max - indices.min }.max + 1
end

def check node, depth = 0, index = 0
  return if node.nil?

  (@nodes_on_same_depth[depth] ||= []) << index
  
  depth += 1
  check node.left, depth, (index * 2) + 1
  check node.right, depth, (index * 2) + 2
end
