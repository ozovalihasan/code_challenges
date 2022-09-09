# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  nums.tally.values.sum {|val| ((val - 1) * val) / 2}
end