# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  counts = nums.tally.values
  return -1 if counts.any?(1)

  counts.sum { |count| ((count + 2) / 3) }
end
