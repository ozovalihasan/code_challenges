# @param {Integer[]} nums
# @return {Integer}
def max_rotate_function(nums)
  sum = nums.sum
  nums_size = nums.size
  
  result = 0
  nums.each_with_index { |num, index| result += num * index }

  max_result = result

  nums.each do |num|
    result += (nums_size * num) - sum
    max_result = result if result > max_result
  end
  
  max_result
end