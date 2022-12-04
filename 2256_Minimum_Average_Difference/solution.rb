# @param {Integer[]} nums
# @return {Integer}
def minimum_average_difference(nums)
  sum_right = nums.sum
  right_size = nums.size
  
  sum_left = 0
  left_size = 0

  diff = 1.upto(nums.size - 1).map do |index|
    sum_right -= nums[index - 1]
    right_size -= 1
    
    sum_left += nums[index - 1]
    left_size += 1

    ((sum_left / left_size) - (sum_right / right_size)).abs
  end 

  diff << (nums.sum / nums.size).abs
  
  diff.index(diff.min)
end
