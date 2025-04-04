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
# @return {TreeNode}
def lca_deepest_leaves(root)
  @max_depth = -1
  @result = nil
  check_node(root, 0)
  @result
end

def check_node(node, depth = 0)
  return -1 if node.nil?

  @max_depth = depth if depth > @max_depth
  
  if node.right.nil? && node.left.nil?
    @result = node if depth == @max_depth
    
    return depth
  end

  right_depth = check_node(node.right, depth + 1)
  left_depth = check_node(node.left, depth + 1)
  @result = node if right_depth == @max_depth && left_depth == @max_depth

  [right_depth, left_depth].max
end