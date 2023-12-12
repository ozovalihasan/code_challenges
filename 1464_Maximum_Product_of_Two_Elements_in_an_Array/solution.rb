# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  selected_nums = nums.max(2)
  (selected_nums.first - 1) * (selected_nums.last - 1)
end