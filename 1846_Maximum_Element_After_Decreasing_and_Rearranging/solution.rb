# @param {Integer[]} arr
# @return {Integer}
def maximum_element_after_decrementing_and_rearranging(arr)
  result = 1
  arr.sort.each do |num|
    result += 1 
    result = num if num <= result
  end

  result
end
