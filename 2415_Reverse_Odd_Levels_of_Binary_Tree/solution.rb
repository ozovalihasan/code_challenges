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
def reverse_odd_levels(root) 
  swap_values(root.left, root.right, 1)
  root
end

def swap_values(cursor1, cursor2, level)
  return if cursor1.nil? || cursor2.nil?

  cursor1.val, cursor2.val = cursor2.val, cursor1.val if level.odd?
  
  swap_values(cursor1.left, cursor2.right, level + 1)
  swap_values(cursor1.right, cursor2.left, level + 1)
end
