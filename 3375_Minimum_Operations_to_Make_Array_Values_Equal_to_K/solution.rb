# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
  return -1 if nums.any? {|num| num < k}
  
  nums.uniq.size - (nums.include?(k) ? 1 : 0)
end