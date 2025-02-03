# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_subarray_length(nums, k)
  counts = Hash.new(0)
  left_index = -1
  nums.map.with_index do |num, right_index|
    counts[num] += 1
    while counts[num] > k
      left_index += 1
      left_num = nums[left_index]
      counts[left_num] -= 1
    end

    right_index - left_index
  end.max
end
