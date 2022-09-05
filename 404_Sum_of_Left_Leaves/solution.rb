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
def sum_of_left_leaves(root, left_node = false)
  result = [0]
  check_nodes(root.left, true, result)
  check_nodes(root.right, false, result)
  result.first
end

def check_nodes(node, left_node, result)
  return if node.nil? 

  result[0] += node.val if left_node && node.left.nil? && node.right.nil? 
    
  check_nodes(node.left, true, result)
  check_nodes(node.right, false, result)
end