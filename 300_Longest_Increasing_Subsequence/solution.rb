# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  result = []
  nums.each do |num|
    index = result.bsearch_index { |checked_num| checked_numq >= num } || result.size
    result[index] = num
  end

  result.size
end
