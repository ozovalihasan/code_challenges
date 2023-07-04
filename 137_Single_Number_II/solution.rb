# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  ((nums.uniq.sum) * 3 - nums.sum) / 2
end