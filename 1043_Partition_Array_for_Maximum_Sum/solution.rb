# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def max_sum_after_partitioning(arr, k)
  maxes = arr.max(k)
  max = 0
  result = []
  arr.each_with_index do |num, index|
    max = num if maxes.include? num
    result[index] = max
  end 

  max = 0
  arr.reverse.each_with_index do |num, index|
    max = num if maxes.include? num
    result[-1 - index] = max if result[-1 - index] < max
  end
  
  p result
  result.sum
end
