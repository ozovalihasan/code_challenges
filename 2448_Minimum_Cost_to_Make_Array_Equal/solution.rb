# @param {Integer[]} nums
# @param {Integer[]} costs
# @return {Integer}
def min_cost(nums, costs)
  min, max = nums.minmax
  return 0 if min == max

  memo = Hash.new { |h, k| h[k] = nums.zip(costs).sum(0) { |number, cost| cost * (k - number).abs } }
  memo[(min..max).bsearch { |number| memo[number] < memo[number + 1] }]
end