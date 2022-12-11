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
def max_path_sum(root)
  @possible_path_sums = []
  check_node(root)
  @possible_path_sums.max
end

def check_node(node)
  return 0 if node.nil?

  left = [check_node(node.left), 0].max
  right = [check_node(node.right), 0].max

  @possible_path_sums << (left + right + node.val)

  [left, right].max + node.val
end