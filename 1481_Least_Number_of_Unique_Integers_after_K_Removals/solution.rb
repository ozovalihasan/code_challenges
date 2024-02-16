# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_least_num_of_unique_ints(arr, k)
  counts = arr.tally.values.sort
  return counts.size if k.zero?

  sum = 0
  counts.each_with_index do |count, index|
    sum += count
    return counts.size - index - 1 if sum == k
    return counts.size - index  if sum > k
  end

  0
end