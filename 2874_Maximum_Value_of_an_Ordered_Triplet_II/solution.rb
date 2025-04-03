# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  max = -Float::INFINITY
  max_differences = []
  nums.each_with_index do |num, index|
    if num > max
      max = num
    end
    
    max_differences << max - num
  end

  max_differences.pop
  max_differences.unshift(nil)
  
  max = -Float::INFINITY
  max_result = -Float::INFINITY
  (nums.size - 1).downto(1) do |index|
    num = nums[index]
    if num > max
      max = num
    end  
    if (max * max_differences[index]) > max_result
      max_result = max * max_differences[index]
    end
  end

  max_result
end