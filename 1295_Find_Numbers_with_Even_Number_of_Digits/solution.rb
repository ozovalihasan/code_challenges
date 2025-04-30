# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  nums.count { |num| num.to_s.size.even? } 
end