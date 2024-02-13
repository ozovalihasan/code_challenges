# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  nums.each_with_object([]) do |num, result|
    index = result.bsearch_index {|checked_num| checked_num >= num} || (result.size )
    result[index] = num

    return true if index == 2
  end    

  false
end