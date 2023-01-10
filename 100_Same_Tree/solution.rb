# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} node1
# @param {TreeNode} node2
# @return {Boolean}
def is_same_tree(node1, node2)
  return node1.nil? && node2.nil? if node1.nil? || node2.nil?

  return false unless node1.val == node2.val && 
                      is_same_tree(node1.left, node2.left) && 
                      is_same_tree(node1.right, node2.right)

  true
end