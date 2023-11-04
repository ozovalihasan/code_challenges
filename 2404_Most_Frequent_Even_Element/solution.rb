# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
  return -1 if nums.none?(&:even?)

  count = nums.select(&:even?).tally
  max = count.values.max
  count.select { |_, val| val == max }.keys.min
end
