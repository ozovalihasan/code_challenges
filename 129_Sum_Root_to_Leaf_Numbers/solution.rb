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
  check_node(root, [])
  @result
end

def check_node(node, previous)
  return if node.nil?
  
  previous << node.val

  if leaf? node
    @result += previous.join.to_i 
  else
    check_node(node.left, previous)
    check_node(node.right, previous)
  end

  previous.pop
end

def leaf?(node)
  node.left.nil? && node.right.nil?
end