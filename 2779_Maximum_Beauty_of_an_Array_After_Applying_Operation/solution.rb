# @param {Integer[]} nums
# @param {Integer} range_diff
# @return {Integer}
def maximum_beauty(nums, range_diff)
  nums.sort!
  
  cursor = 0
  max = 0
  range_diff *= 2
  
  nums.each_with_index do |num, index|
    cursor += 1 while nums[cursor] && nums[cursor] <= (num + range_diff)
    
    max = cursor - index if cursor - index > max
    cursor += 1
    
    break if nums[cursor].nil?
  end

  max
end
