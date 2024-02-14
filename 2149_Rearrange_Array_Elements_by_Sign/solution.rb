# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
  nums.partition(&:positive?).transpose.flatten(1)
end