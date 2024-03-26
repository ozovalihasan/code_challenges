# Another one's solution(https://leetcode.com/problems/first-missing-positive/solutions/17080/python-o-1-space-o-n-time-solution-with-explanation) is implemented

# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  nums << 0
  size = nums.size
  limit = size - 1
  nums.map! { |num| num.between?(0, limit) ? num : 0 }
  nums.each { |num| nums[num % size] += size}
  nums.index { |num| (num / size) == 0 } || nums.size
end