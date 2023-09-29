# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
  nums.tally.values.all?(&:even?)
end