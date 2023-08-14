# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  result = Array.new(k, -Float::INFINITY)

  nums.each do |num|
    index = result.bsearch_index {|result_num| result_num < num} 
    
    if index
      result.insert(index, num)
      result.pop
    end
  end
  
  result[k - 1]
end