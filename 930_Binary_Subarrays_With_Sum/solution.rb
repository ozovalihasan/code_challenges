# @param {Integer[]} nums
# @param {Integer} goal
# @return {Integer}
def num_subarrays_with_sum(nums, goal)
  sum = 0
  nums = nums.map {|num| sum += num}
  freq = nums.tally
  freq.default = 0
  freq[0] += 1
  
  freq.sum do |num, val|
    if goal.zero?
      (val * (val - 1)) / 2
    else
      goal_val = freq[num + goal]
      goal_val * val
    end
  end
end