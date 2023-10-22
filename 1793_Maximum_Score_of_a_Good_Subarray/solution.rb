# @param {Integer[]} @nums
# @param {Integer} @reference_index
# @return {Integer}
def maximum_score(nums, reference_index)
  @nums = nums
  @reference_index = reference_index
  set_left_part
  set_right_part

  @max_left_index = @left.size - 1
  @max_right_index = @right.size - 1
  @max = nums[reference_index]
  check_parts(0, 0)
  @max
end

def set_left_part
  @left = []
  min = @nums[@reference_index]
  @reference_index.downto(0) do |index|
    if min > @nums[index]
      @left << [index + 1, min]
      min = @nums[index]
    end
  end

  @left << [0, min]
end

def set_right_part
  @right = []
  min = @nums[@reference_index]
  @reference_index.upto(@nums.size - 1) do |index|
    if min > @nums[index]
      @right << [index - 1, min]
      min = @nums[index]
    end
  end

  @right << [@nums.size - 1, min]
end

def check_parts(left_index, right_index)
  return if @left[left_index].nil? || @right[right_index].nil?

  left_index, right_index = skip_unnecessary_indices(left_index, right_index)
  
  result = [@right[right_index].last, @left[left_index].last].min 
  result *= @right[right_index].first - @left[left_index].first + 1
  @max = result if result > @max
end

def skip_unnecessary_indices(left_index, right_index)
  left_val = @left[left_index].last
  right_val = @right[right_index].last

  if right_val > left_val
    right_index += 1 while @right[right_index + 1] && @right[right_index + 1].last >= left_val
    check_parts(left_index + 1, right_index)
  elsif left_val > right_val
    left_index += 1 while @left[left_index + 1] && @left[left_index + 1].last >= right_val
    check_parts(left_index, right_index + 1)
  else
    check_parts(left_index + 1, right_index)
    check_parts(left_index, right_index + 1)
  end

  [left_index, right_index]
end
