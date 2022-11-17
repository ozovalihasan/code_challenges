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
# @return {Integer[]}
def postorder_traversal(root)
  @result = []
  check_node(root)
  @result
end

def check_node(node)
  return if node.nil? 
  check_node(node.left)
  check_node(node.right)
  @result << node.val
end