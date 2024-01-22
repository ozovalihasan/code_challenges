# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  missing = ((1..nums.size).to_a - nums).first
  extra = nums.tally.find { |_, count| count == 2 }.first
  [extra, missing]
end
