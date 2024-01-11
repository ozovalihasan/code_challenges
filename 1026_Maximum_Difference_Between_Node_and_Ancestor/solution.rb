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
def max_ancestor_diff(root)
  @max = 0
  check_node(root, root.val, root.val)
  @max
end

def check_node(node, min, max)
  return if node.nil?
  
  @max = node.val - min if node.val - min > @max
  @max = max - node.val if max - node.val > @max

  min = node.val if node.val < min
  max = node.val if node.val > max

  check_node(node.left, min, max)
  check_node(node.right, min, max)
end
