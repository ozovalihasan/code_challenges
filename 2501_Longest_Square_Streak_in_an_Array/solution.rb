# @param {Integer[]} nums
# @return {Integer}
def longest_square_streak(nums)
  nums.sort!
  
  result = Hash.new(0)
  nums.each { |num| result[num**2] = result[num] + 1 }

  max = result.values.max
  max == 1 ? -1 : max
end
