# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[][]}
def divide_array(nums, k)
  nums = nums.sort.each_slice(3).to_a
  
  nums.all? { |arr| (arr.last - arr.first) <= k } ? nums : []
end
