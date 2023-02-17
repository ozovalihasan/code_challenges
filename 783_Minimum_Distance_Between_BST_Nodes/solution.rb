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
def min_diff_in_bst(root)

  @node_values = [ ]
  @diff = []
  
  check_node(root)
  
  @diff.min
end

def check_node(node)
  return if node.nil?

  check_node(node.left)
  
  @diff << node.val - @node_values.last unless @node_values.empty?
  @node_values << node.val
  
  check_node(node.right)
end