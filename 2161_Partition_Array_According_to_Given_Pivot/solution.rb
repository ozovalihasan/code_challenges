# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
  result = nums.group_by { |num| num <=> pivot }.to_h
  result.default = []
  result[-1] + result[0] + result[1]
end
