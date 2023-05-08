# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  max_sum = sum = nums.first(k).sum

  k.upto(nums.size - 1) do |index|
    sum += nums[index] - nums[index - k] 

    max_sum = sum if sum > max_sum
  end

  max_sum.to_f / k
end