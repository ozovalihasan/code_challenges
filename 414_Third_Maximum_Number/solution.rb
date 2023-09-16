# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  sorted_nums = nums.uniq.sort
  sorted_nums[-3] || sorted_nums[-1]
end