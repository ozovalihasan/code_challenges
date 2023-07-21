# @param {Integer[]} nums
# @return {Integer}
def find_number_of_lis(nums)
  result = [[[-Float::INFINITY,1]]]
  
  nums.each do |num|
    reference_index = result.bsearch_index {|arr| arr.first.first >= num}

    unless reference_index
      reference_index = result.size
      result << [[num, 0]]
    end

    boundary_index = result[reference_index - 1].bsearch_index {|arr| arr.first >= num} || result[reference_index - 1].size
    sum = result[reference_index - 1][0...boundary_index].sum(&:last)

    if result[reference_index].first.first == num
      result[reference_index].first[1] += sum
    else
      result[reference_index].unshift [num, sum]
    end
  end
  
  result.last.sum(&:last)
end