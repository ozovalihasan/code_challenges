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
def pseudo_palindromic_paths(root)
  @counts = Hash.new(0)
  @counts_odd = 0
  @result = 0
  check_node(root)
  @result
end

def check_node(node)
  return if node.nil?

  @counts[node.val] += 1
  @counts_odd += @counts[node.val].odd? ? 1 : -1
  
  @result += 1 if node.left.nil? && node.right.nil? && @counts_odd <= 1

  check_node(node.left)
  check_node(node.right)

  @counts_odd += @counts[node.val].odd? ? -1 : 1
  @counts[node.val] -= 1
end
