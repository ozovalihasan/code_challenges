# @param {Integer[]} nums
# @param {Integer} max_operations
# @return {Integer}
def minimum_size(nums, max_operations) 
  max = nums.max

  (1..max).bsearch do |size|
    sum = nums.sum do |num|
      ((num - 1) / size)
    end
    
    sum <= max_operations
  end
end
