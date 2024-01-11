# @param {Integer[]} nums
# @return {Integer[]}
def left_right_difference(nums)
  left_sum = 0
  right_sum = nums.sum
  
  nums.map do |num| 
    right_sum -= num
    left_sum += num 
    (left_sum - num - right_sum).abs
  end
end
