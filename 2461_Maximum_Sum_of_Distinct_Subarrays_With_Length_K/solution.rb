# @param {Integer[]} nums
# @param {Integer} window_size
# @return {Integer}
def maximum_subarray_sum(nums, window_size)
  current_window = nums[...window_size]
  num_counts = current_window.tally
  num_counts.default = 0
  non_unique_count = num_counts.count { |_, count| count > 1 }
  
  max_sum = 0
  current_sum = current_window.sum
  
  max_sum = [max_sum, current_sum].max if non_unique_count.zero?

  0.upto(nums.size - window_size - 1) do |index|
    tail_num = nums[index]
    num_counts[tail_num] -= 1
    non_unique_count -= 1 if num_counts[tail_num] == 1
    current_sum -= tail_num

    head_num = nums[index + window_size]
    num_counts[head_num] += 1
    non_unique_count += 1 if num_counts[head_num] == 2
    current_sum += head_num

    max_sum = [max_sum, current_sum].max if non_unique_count.zero?
  end  

  max_sum
end
