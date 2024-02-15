# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  nums.sort!

  total = nums.first(2).sum
  result = -1
  nums[2..].each do |num|
    result = total + num if total > num
    total += num
  end

  result
end