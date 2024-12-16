# @param {Integer[]} nums
# @param {Integer} total_operation
# @param {Integer} multiplier
# @return {Integer[]}
def get_final_state(nums, total_operation, multiplier) 
  total_operation.times do
    min_index = nums.index(nums.min)
    nums[min_index] *= multiplier
  end

  nums
end
