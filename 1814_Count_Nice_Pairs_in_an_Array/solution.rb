MODULO = (10**9) + 7
# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  diff_counts = nums.map { |num| num - num.to_s.reverse.to_i }
                    .tally
                    .values
                    
  diff_counts.sum { |count| ((count * (count - 1)) / 2) } % MODULO 
end