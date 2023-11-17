# @param {Integer[]} nums
# @return {Integer}
def min_pair_sum(nums)
  nums.sort!
  
  0.upto((nums.size / 2) - 1).map { |index| nums[index] + nums[~index] }.max
end
