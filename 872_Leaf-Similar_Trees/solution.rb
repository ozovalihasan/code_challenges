# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
################
## Solution 1
################
def leaf_similar(root1, root2)
  leaves(root1) == leaves(root2)
end

def leaves(root)
  stack = [root]
  result = []

  while node = stack.pop
    result << node.val if node.right.nil? && node.left.nil?
    stack << node.right if node.right
    stack << node.left if node.left
  end
  
  result
end

################
## Solution 2
################
# def leaf_similar(root1, root2)
#   leaves(root1) == leaves(root2)
# end

# def leaves(root)
#   result = []
#   check_node(root, result)
#   result
# end

# def check_node(node, result)
#   return if node.nil?
  
#   result << node.val if node.right.nil? && node.left.nil?
  
#   check_node(node.right, result)
#   check_node(node.left, result)
# end