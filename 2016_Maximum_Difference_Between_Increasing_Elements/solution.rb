# @param {Integer[]} nums
# @return {Integer}
def maximum_difference(nums)
  max_diff = -1
  min = nums.first 

  nums.each do |num|
    if num < min
      min = num
    elsif (min + max_diff) < num
      max_diff = num - min
    end
  end

  max_diff.zero? ? -1 : max_diff
end