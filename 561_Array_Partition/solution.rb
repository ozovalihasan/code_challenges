# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  sum = 0
  nums.sort!
  while nums.first
    sum += nums.pop(2).first
  end
  sum
end