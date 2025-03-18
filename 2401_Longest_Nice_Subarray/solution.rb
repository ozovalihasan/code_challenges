# @param {Integer[]} nums
# @return {Integer}
def longest_nice_subarray(nums)
  result = 0
  
  nums.each_with_index do |num, index|
    index2 = index
    suitable_nums = 0
    while index2 < nums.size && (suitable_nums & nums[index2]).zero? 
      suitable_nums = suitable_nums | nums[index2]
      index2 += 1
    end

    result = index2 - index if index2 - index > result
  end
  result
end