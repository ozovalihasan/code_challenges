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
# @param {Integer} low
# @param {Integer} high
# @return {Integer}

##############
## Solution 1
##############
def range_sum_bst(root, low, high)
  return 0 if root.nil?
  result = root.val.between?(low, high) ? root.val : 0
  result += range_sum_bst(root.right, low, high) 
  result += range_sum_bst(root.left, low, high)
end

##############
## Solution 2
##############
# def range_sum_bst(root, low, high)
#   return 0 if root.nil?
#   stack = [root]
  
#   result = 0
#   while stack.any?
#     node = stack.pop
    
#     next if node.nil?
    
#     result += node.val if node.val.between? low, high
#     stack << node.right
#     stack << node.left
#   end

#   result
# end