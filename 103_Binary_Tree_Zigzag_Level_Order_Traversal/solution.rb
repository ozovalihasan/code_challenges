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
# @return {Integer[][]}
def zigzag_level_order(root)
  @result = []
  depth = 0
  check_node(root, depth)
  @result
end

def check_node(node, depth)
  return if node.nil?

  @result[depth] ||= []
  if depth.even?
    @result[depth].push node.val
  else
    @result[depth].unshift node.val
  end
  
  check_node(node.left, depth + 1)
  check_node(node.right, depth + 1)
end