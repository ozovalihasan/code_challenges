# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k = k % nums.size
  nums.concat(nums.shift(nums.size - k))
end