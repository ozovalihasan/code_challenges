# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  nums.sort! {|first| first.zero? ? 1 : -1}
end

#############
## 2. Solution
#############
# # @param {Integer[]} nums
# # @return {Void} Do not return anything, modify nums in-place instead.
# def move_zeroes(nums)
#   count = nums.count 0
#   nums.delete 0
#   nums.concat([0] * count)
# end