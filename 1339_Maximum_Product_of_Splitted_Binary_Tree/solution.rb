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
def max_product(root)
  @values = []
  check_node(root)
  sum_of_all_values = @values.last
  max_product = @values.map { |sum_of_one_tree| (sum_of_all_values - sum_of_one_tree) * sum_of_one_tree }.max 
  max_product % (10**9 + 7)
end

def check_node(node)
  return 0 if node.nil?

  @values << (check_node(node.left) + check_node(node.right) + node.val)
  @values.last
end