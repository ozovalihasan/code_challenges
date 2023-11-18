# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_frequency(nums, k)
  nums.sort!

  left = 0
  right = 0
  sum = 0
  
  until nums[right].nil?
    sum += nums[right]

    unless (nums[right] * (right - left + 1)) - sum <= k
      sum -= nums[left]
      left += 1
    end
 
    right += 1
  end

  right - left
end
