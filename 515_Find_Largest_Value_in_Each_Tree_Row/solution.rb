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
def largest_values(root)
  @res = []
  check_node(root, 0)
  @res
end

def check_node(node, depth)
  return if node.nil?

  @res[depth] = node.val if @res[depth].nil? || node.val > @res[depth]
    
  check_node(node.left, depth + 1)
  check_node(node.right, depth + 1)
end
