# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
  nums.max(2).inject(&:*) - nums.min(2).inject(&:*)
end