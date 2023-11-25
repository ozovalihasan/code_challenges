# @param {Integer[]} nums
# @return {Integer[]}
def get_sum_absolute_differences(nums)
  sum_right_part = nums.sum
  sum_left_part = 0

  (1..nums.size).map do |index|
    num = nums[index - 1]
    sum_left_part += num
    sum_right_part -= num
    (sum_right_part - (num * (nums.size - index))).abs + (sum_left_part - (num * index)).abs
  end
end
