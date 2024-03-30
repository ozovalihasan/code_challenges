# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarrays_with_k_distinct(nums, k)
  max_index = nums.size
  total_count = 0

  right_counts = Hash.new(0)
  right_count_uniq_nums = 0
  right_index = - 1

  left_counts = Hash.new(0)
  left_count_uniq_nums = 0
  left_index = - 1
  
  nums.each do |num|
    until (right_count_uniq_nums == (k + 1)) || (right_index == max_index)
      right_index += 1
      right_num = nums[right_index]
      right_count_uniq_nums += 1 if right_counts[right_num].zero?
      right_counts[right_num] += 1
    end
    
    until (left_count_uniq_nums == k) 
      left_index += 1
      return total_count if left_index == max_index
      left_num = nums[left_index]
      left_count_uniq_nums += 1 if left_counts[left_num].zero?
      left_counts[left_num] += 1
    end
    total_count += right_index - left_index

    right_counts[num] -= 1
    right_count_uniq_nums -= 1 if right_counts[num].zero?

    left_counts[num] -= 1
    left_count_uniq_nums -= 1 if left_counts[num].zero?
  end

  total_count
end
