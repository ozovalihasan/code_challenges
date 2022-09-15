# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums, min = -1, max = nums.size)
  return nil if (min + 1 == max)
  
  middle = (min + max) / 2
  TreeNode.new(
    nums[middle],
    sorted_array_to_bst(nums, min, middle),
    sorted_array_to_bst(nums, middle, max)
  )
  
end