# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  counts = nums.tally
  max = counts.values.max
  counts.find { |_, count| count == max}.first
end