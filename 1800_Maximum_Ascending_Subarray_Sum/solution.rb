# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
  previous = 0 
  result = [0]

  nums.each do |num|
    result << 0 if num <= previous
    result[-1] += num
    previous = num
  end
  
  result.max
end
