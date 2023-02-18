# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} node
# @return {TreeNode}
def invert_tree(node)
  return if node.nil?

  invert_tree(node.left)
  invert_tree(node.right)
  node.left, node.right = node.right, node.left

  node
end