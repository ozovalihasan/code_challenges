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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  return true if check_sum(root, 0, target_sum)
  false
end

def check_sum(node, sum, target_sum)
  return if node.nil?
  
  sum += node.val
  return true if sum == target_sum && node.left.nil? && node.right.nil?
  return true if check_sum(node.left, sum, target_sum)
  return true if check_sum(node.right, sum, target_sum)
end