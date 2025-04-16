# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_good(nums, k)
  available_pairs = 0
  counts = Hash.new(0)
  left_index = 0
  result = 0
  
  nums.each do |right_num|
    available_pairs += counts[right_num]
    counts[right_num] += 1

    while available_pairs >= k
      left_num = nums[left_index]
      counts[left_num] -= 1
      available_pairs -= counts[left_num]
      left_index += 1
    end
    
    result += left_index
  end

  result
end