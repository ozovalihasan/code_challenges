# @param {Integer[]} nums
# @return {Integer}
def count_bad_pairs(nums)
  nums.map!.with_index do |num, index|
    num - index
  end

  good_pairs_count = nums.tally.values.sum {|value| count_pairs(value)}
  all_pairs_count = count_pairs(nums.size)
  
  all_pairs_count - good_pairs_count
end

def count_pairs(size)
  size * (size - 1) / 2
end