# @param {Integer[]} nums
# @return {Integer}
def count_complete_subarrays(nums)
  distinct_nums_count = nums.uniq.count
  counts = Hash.new(0)
  current_distinct_count = 0
  right_index = -1
  left_index = -1
  result = 0
  until right_index == nums.size
    until current_distinct_count == distinct_nums_count 
      right_index += 1
      break if right_index == nums.size

      current_distinct_count += 1 if counts[nums[right_index]] == 0
      counts[nums[right_index]] += 1
    end

    result += nums.size - right_index
    
    left_index += 1
    counts[nums[left_index]] -= 1
    current_distinct_count -= 1 if counts[nums[left_index]] == 0
    break if right_index == nums.size
  end

  result
end