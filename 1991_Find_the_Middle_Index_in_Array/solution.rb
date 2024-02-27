# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
  right_sum = nums.sum
  left_sum = 0
  left_num = 0

  nums.each_with_index do |middle_num, index|
    right_sum -= middle_num
    left_sum += left_num
    return index if right_sum == left_num

    left_num += middle_num
  end

  -1
end