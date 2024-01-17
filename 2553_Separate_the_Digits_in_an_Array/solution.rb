# @param {Integer[]} nums
# @return {Integer[]}
def separate_digits(nums)
  nums.map { |num| num.digits.reverse }.flatten
end
