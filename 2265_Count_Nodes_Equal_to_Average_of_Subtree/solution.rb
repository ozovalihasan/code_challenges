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
def average_of_subtree(root)
  @result = 0
  check_node(root)    
  @result
end

def check_node(node)
  return [0, 0] if node.nil?
  
  left_sum, left_count = check_node(node.left)
  right_sum, right_count = check_node(node.right)
  
  sum = node.val + left_sum + right_sum
  count = 1 + left_count + right_count
  
  @result += 1 if (sum / count) == node.val
  
  [sum, count]
end
