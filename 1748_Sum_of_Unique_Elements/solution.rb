# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
  nums.tally.select { |_, count| count == 1 }.keys.sum
end
