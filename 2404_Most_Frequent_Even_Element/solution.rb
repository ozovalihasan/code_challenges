# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
  nums.select!(&:even?)

  return -1 if nums.empty?

  count = nums.tally
  max = count.values.max
  count.select { |key, val| val == max }.keys.min
end