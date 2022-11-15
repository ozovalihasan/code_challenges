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
def count_nodes(root)
  @count = 0
  check_node(root)
  @count
end

def check_node(node)
  return if node.nil?

  @count += 1
  check_node(node.left)
  check_node(node.right)
end