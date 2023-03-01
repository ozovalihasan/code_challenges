# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
  result = []
  nums.each do |num|
    index = result.bsearch_index {|num2| num2 > num} || result.size
    result.insert(index, num)
  end

  result
end