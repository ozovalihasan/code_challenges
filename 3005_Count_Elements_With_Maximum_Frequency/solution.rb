# @param {Integer[]} nums
# @return {Integer}
def max_frequency_elements(nums)
  nums.tally.values.tally.max_by(&:first).inject(&:*)
end
