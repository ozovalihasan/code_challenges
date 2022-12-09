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
  @result = []
  check_node(root, root.val, root.val)
  @result.max
end

def check_node(node, min, max)
  return if node.nil?
  
  @result << (node.val - min)
  @result << (max - node.val)
  
  min, max = [min, node.val, max].minmax unless node.val.between? min, max
  check_node(node.left, min, max)
  check_node(node.right, min, max)
end