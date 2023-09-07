def max_width_ramp(nums)
  stack = [0]
  nums.each_with_index do |num, index|
    if num < nums[stack.last]
      stack << index
    end
  end

  max_width = 0
  (nums.length - 1).downto(0) do |index|
    while stack.any? && nums[index] >= nums[stack.last]
      max_width = [max_width, index - stack.pop].max
    end
  end

  max_width
end
