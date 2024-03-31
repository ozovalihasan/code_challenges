# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_subarrays(nums, k)
  max_num = nums.max
  max_counts = 0
  left_index = 0

  nums.sum do |num|
    max_counts += 1 if num == max_num

    while max_counts >= k
      max_counts -= 1 if nums[left_index] == max_num
      
      left_index += 1
    end
    
    left_index
  end
end