# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  counts = nums.tally
  max_count = counts.values.max
  counts.find { |_, count| count == max_count}.first
end