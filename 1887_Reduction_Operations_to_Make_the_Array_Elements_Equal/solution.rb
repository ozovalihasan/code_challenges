# @param {Integer[]} nums
# @return {Integer}
def reduction_operations(nums)
  freq = nums.tally
  uniq_nums = freq.keys.sort!
  
  uniq_nums.each_with_index.sum do |num, index| 
    freq[num] * index
  end
end
