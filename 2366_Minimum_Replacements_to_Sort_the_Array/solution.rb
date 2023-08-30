# @param {Integer[]} nums
# @return {Integer}
def minimum_replacement(nums)
  previous = nums.last
  replacement_count = 0  
  (nums.size - 2).downto(0) do |index|
    num = nums[index]
    replacement_size = ((num - 1) / previous) + 1
    previous = (num / replacement_size)
    replacement_count += replacement_size - 1
  end

  replacement_count
end