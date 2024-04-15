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
def sum_numbers(root)
  @result = 0
  check_node(root, "") if root
  @result
end

def check_node(node, previous)
  previous += node.val.to_s

  return @result += previous.to_i if leaf? node
  
  check_node(node.left, previous) if node.left
  check_node(node.right, previous) if node.right
end

def leaf?(node)
  node.left.nil? && node.right.nil?
end