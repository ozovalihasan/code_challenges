# @param {Integer[]} nums
# @return {Boolean}
def is_possible_to_split(nums)
  nums.tally.values.all? {|val| val <= 2}
end