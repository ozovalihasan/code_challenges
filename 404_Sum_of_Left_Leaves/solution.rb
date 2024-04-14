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
def sum_of_left_leaves(root, left_node = false)
  left_sum = 0
  left_stack = []
  right_stack = [root]
  until left_stack.empty? && right_stack.empty?
    while (node = left_stack.pop)
      next left_sum += node.val if node.left.nil? && node.right.nil?
      
      left_stack << node.left if node.left
      right_stack << node.right if node.right
    end

    while (node = right_stack.pop)
      left_stack << node.left if node.left
      right_stack << node.right if node.right
    end
  end 

  left_sum
end
