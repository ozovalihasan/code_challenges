# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  count = nums.tally
  nums.sort_by {|num| [count[num], -num]}
end