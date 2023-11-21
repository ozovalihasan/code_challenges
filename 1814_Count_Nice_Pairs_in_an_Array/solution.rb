MODULO = (10**9) + 7
# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  differences = nums.map { |num| num - num.to_s.reverse.to_i }
  diff_counts = differences.tally.values.tally

  diff_counts.sum { |size, count| ((size * (size - 1)) / 2 * count) % MODULO } % MODULO 
end
