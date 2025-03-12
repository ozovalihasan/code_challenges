# @param {Integer[]} nums
# @return {Integer}
def maximum_count(nums)
  positive_count = 0
  negative_count = 0

  nums.each do |num|
    if num.positive?
      positive_count += 1
    elsif num.negative?
      negative_count += 1
    end  
  end
  
  [positive_count, negative_count].max
end
