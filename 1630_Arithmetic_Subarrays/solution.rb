# @param {Integer[]} nums
# @param {Integer[]} left_indices
# @param {Integer[]} right_indices
# @return {Boolean[]}
def check_arithmetic_subarrays(nums, left_indices, right_indices)
  left_indices.zip(right_indices).map do |left_index, right_index|
    arithmetic?(nums[left_index..right_index])
  end
end

def arithmetic?(arr)
  arr.sort!
  diff = arr[-1] - arr[-2]
  previous_num = arr.pop - diff

  until arr.empty?
    return false unless arr.pop == previous_num

    previous_num -= diff
  end

  true
end
