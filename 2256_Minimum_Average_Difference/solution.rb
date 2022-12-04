# @param {Integer[]} nums
# @return {Integer}
def minimum_average_difference(nums)
  sum1 = 0
  sum2 = nums.sum

  diff = 1.upto(nums.size - 1).map do |index|
    sum1 += nums[index - 1]
    sum2 -= nums[index - 1]
    ((sum1 / index) - (sum2 / (nums.size - index))).abs
  end << (nums.sum / nums.size).abs
  
  diff.index(diff.min)
end
