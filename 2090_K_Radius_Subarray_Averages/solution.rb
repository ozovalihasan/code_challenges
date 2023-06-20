# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def get_averages(nums, k)
  return nums if k.zero?
  
  window_size = k * 2 + 1
  return Array.new(nums.size, -1) if window_size > nums.size
  
  sum = nums.take(window_size).sum
  result = Array.new(k, -1) << sum / window_size
  
  (nums.size - window_size).times do |index|
    sum += nums[index + window_size] - nums[index]
    result << sum / window_size
  end

  result.concat(Array.new(k, -1))
end