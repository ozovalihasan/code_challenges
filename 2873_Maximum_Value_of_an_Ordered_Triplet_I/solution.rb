# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  max = -Float::INFINITY
  max_differences = []
  nums.each_with_index do |num, index|
    max = num if num > max
    max_differences << max - num
  end

  max_differences.pop
  max_differences.unshift(nil)
  
  max = -Float::INFINITY
  max_result = -Float::INFINITY
  (nums.size - 1).downto(1) do |index|
    num = nums[index]
    max = num if num > max
    max_result = max * max_differences[index] if (max * max_differences[index]) > max_result
  end

  max_result
end