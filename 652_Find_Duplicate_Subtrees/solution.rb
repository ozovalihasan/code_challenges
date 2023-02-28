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
# @return {TreeNode[]}
def find_duplicate_subtrees(root)
  @subtrees = Hash.new(0)
  
  @result = []
  check_node(root)    
  @result
end

def check_node(node)
  return [nil] if node.nil?

  arr = [node.val].concat(check_node(node.left)).concat(check_node(node.right))
  @subtrees[ arr ] += 1
  @result << node if @subtrees[ arr ] == 2
  arr
end
