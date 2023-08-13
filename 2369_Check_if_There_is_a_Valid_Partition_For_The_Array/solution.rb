# @param {Integer[]} nums
# @return {Boolean}
def valid_partition(nums)
  @result = []
  @result[nums.size] = true
  @result[nums.size - 1] = false
  @result[nums.size - 2] = nums[-1] == nums[-2]

  @nums = nums
  check(0)  
end

def check(index)
  return @result[index] unless @result[index].nil?
  @result[index] = false
  
  return true if @nums[index + 1] == @nums[index] && check(index + 2)
  
  diff1 = @nums[index + 1] - @nums[index]
  (diff1 == 0 || diff1 == 1) && ((@nums[index + 2] - @nums[index + 1]) === diff1) && check(index + 3)
end