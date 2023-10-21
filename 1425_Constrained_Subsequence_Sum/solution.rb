# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def constrained_subset_sum(nums, k)
  nums.unshift(-1)
  results = Array.new(k, 0)
  res = [nums.max]
  max = 0

  1.upto(nums.size - 1) do |index|
    sum = nums[index] + (nums[index - 1] >= 0 ? res.last : max)
    res << sum

    results << [res.last, 0].max
    max = [max, results.last].max

    shifted_num = results.shift
    max = results.max if shifted_num >= max 
  end

  res.max
end
