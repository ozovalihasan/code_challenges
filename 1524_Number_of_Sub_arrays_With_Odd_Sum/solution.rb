# @param {Integer[]} arr
# @return {Integer}
MODULO = 10**9 + 7
def num_of_subarrays(arr)
  
  arr << 1
  previous_total_counts = [0, 0]
  total_count = 0
  chunk_count = 0
  arr.each do |num|
    chunk_count += 1
    next if num.even?

    previous_total_counts.rotate!
    previous_total_counts[1] += chunk_count
    previous_total_counts[1] %= MODULO

    total_count += chunk_count * previous_total_counts[0]
    total_count %= MODULO

    chunk_count = 0
  end

  total_count
end
