# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def count_fair_pairs(nums, lower, upper)
  nums.sort!
  nums.unshift(-Float::INFINITY)
  lower_index = nums.size - 1
  upper_index = nums.size - 1
  
  count = 0
  nums.each_with_index do |num, index|
    lower_index -= 1 while num + nums[lower_index] >= lower
    upper_index -= 1 while num + nums[upper_index] > upper

    count += upper_index - lower_index
    count -= 1 if (num * 2).between?(lower, upper)

    break if upper_index.zero?
  end

  count / 2
end