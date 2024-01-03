# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
  nums.find_index.with_index { |num, index| index % 10 == num } || -1
end
