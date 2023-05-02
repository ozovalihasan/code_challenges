# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
  return 0 if nums.include? 0

  nums.count(&:negative?).even? ? 1 : -1
end