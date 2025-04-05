# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
  result = 0
  nums.each do |num|
    result = result | num
  end

  result * 2 ** (nums.size - 1)
end
