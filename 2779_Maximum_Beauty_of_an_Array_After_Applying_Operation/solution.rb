# @param {Integer[]} nums
# @param {Integer} range_diff
# @return {Integer}
def maximum_beauty(nums, range_diff)
  nums.sort!
  
  cursor = 0
  range_diff *= 2
  
  nums.each_with_index do |num, index|
    cursor += 1 while nums[cursor] && nums[cursor] <= (num + range_diff)
    
    break cursor - index if nums[cursor].nil?

    cursor += 1
  end
end
