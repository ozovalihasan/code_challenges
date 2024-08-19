# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_least_num_of_unique_ints(arr, k)
  counts = arr.tally.values.sort
  sum = 0
  counts.each_with_index do |count, index|
    sum += count
    
    return counts.size - index - (sum == k ? 1 : 0) if sum >= k
  end

  0
end