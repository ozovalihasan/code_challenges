# @param {Integer[]} nums
# @return {Integer}
def max_absolute_sum(nums)
  negative_result = 0
  positive_result = 0
  max = 0

  nums.each do |num|
    positive_result = [num, positive_result + num].max
    negative_result = [num, negative_result + num].min
    max = [positive_result, negative_result.abs, max].max
  end

  max
end
