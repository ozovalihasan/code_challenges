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
def max_depth(root)
  depth(root)
end

def depth(node)
  return 0 if node.nil?
  
  [max_depth(node.left), max_depth(node.right)].max + 1
end
