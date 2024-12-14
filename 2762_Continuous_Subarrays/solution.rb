# @param {Integer[]} nums
# @return {Integer}
def continuous_subarrays(nums)
  count = 0

  sorted_arr = []
  left_index = 0
  num_counts = Hash.new(0)

  nums.each_with_index do |num, right_index|
    if num_counts[num].zero?
      index = sorted_arr.bsearch_index { |el| el >= num } || sorted_arr.size
      sorted_arr.insert(index, num)
    end
    
    num_counts[num] += 1

    while sorted_arr.last - sorted_arr.first > 2
      left_num = nums[left_index]
      num_counts[left_num] -= 1
      sorted_arr.delete(left_num) if num_counts[left_num].zero?

      left_index += 1
    end

    count += right_index - left_index + 1
  end

  count
end
