# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
  (nums.size - 1).times do |index|
    if nums[index] == nums[index + 1]
      nums[index] *= 2
      nums[index.next] = 0
    end
  end

  zero_count = nums.count(0)
  nums.delete(0)
  nums + [0] * zero_count
end
