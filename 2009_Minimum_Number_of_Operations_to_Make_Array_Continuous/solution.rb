# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  uniq_nums = nums.uniq.sort
  
  max_nums_count_in_range = 0
  range = nums.size - 1
  
  uniq_nums.each_with_index do |num, index|
    possible_max_num = num + range
    count_nums_in_range = uniq_nums[index...].bsearch_index {|checked_num| checked_num > possible_max_num} || uniq_nums[index...].size

    max_nums_count_in_range = count_nums_in_range if count_nums_in_range > max_nums_count_in_range
    break if uniq_nums[index + max_nums_count_in_range].nil?
  end

  nums.size - max_nums_count_in_range
end