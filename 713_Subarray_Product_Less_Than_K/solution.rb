# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
  return 0 if k <= 1

  count = 0
  left = -1
  product = 1
  
  nums.size.times do |right|
    product *= nums[right]
    
    until product < k
      left += 1
      product /= nums[left]
    end
    
    count += right - left
  end

  count
end