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
# @return {Boolean}
def is_symmetric(root)
  check_symmetry(root.left, root.right)  
end

def check_symmetry(left_node, right_node)
  return true if left_node.nil? && right_node.nil?
  return false if left_node.nil? || right_node.nil?

  left_node.val == right_node.val && 
    check_symmetry(left_node.left, right_node.right) && 
    check_symmetry(left_node.right, right_node.left)
end
