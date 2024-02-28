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
def find_bottom_left_value(root)
  @result = [root.val, 0]

  check_node(root, 0)

  @result.first
end

def check_node(node, depth)
  return if node.nil?

  @result = [node.val, depth] if depth > @result.last

  check_node(node.left, depth + 1) if node.left
  check_node(node.right, depth + 1) if node.right
end