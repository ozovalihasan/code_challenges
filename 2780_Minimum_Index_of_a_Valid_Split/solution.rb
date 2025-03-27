# @param {Integer[]} nums
# @return {Integer}
def minimum_index(nums)
  counts_left = Hash.new(0)
  counts_right = nums.tally

  nums[...-1].each_with_index do |num, index|
    counts_left[num] += 1
    counts_right[num] -= 1
    if counts_left[num] * 2 > index + 1 && counts_right[num] * 2 > nums.size - index - 1
      return index
    end
    
  end
  
  -1
end