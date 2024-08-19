"My solution is acceptable but it can be improved more"

# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
  total = x
  index = nums.index {|num| total -= num; total <= 0} || nums.size
  start_index = index
  end_index = nums.size - 1
  count_operations = index + 1

  return -1 if total > 0

  min_count_operations = Float::INFINITY
  loop do
    
    if total <= 0
      if total == 0 && min_count_operations > count_operations
        min_count_operations = count_operations 
      end

      break if start_index == -1
      
      total += nums[start_index]
      start_index -= 1
      count_operations -= 1
    else
      total -= nums[end_index]
      end_index -= 1
      count_operations += 1
    end
  end

  min_count_operations == Float::INFINITY ? -1 : min_count_operations
end
