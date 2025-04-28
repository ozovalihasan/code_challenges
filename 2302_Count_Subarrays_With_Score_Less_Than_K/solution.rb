# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_subarrays(nums, k)
  nums << 0

  result = 0
  right_index = 0
  sum_left = 0
  sum_right = 0
  nums.each_with_index do |num, index|
    while nums[right_index] && (sum_right - sum_left) * (right_index - index) < k
      sum_right += nums[right_index]
      right_index += 1
    end

    if nums[right_index]
      sum_left += num
      result += right_index - index - 1
    else
      result += (right_index - index) * (right_index - index - 1) / 2
      break
    end
  end

  result
end