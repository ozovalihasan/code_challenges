# Thanks to @NikkiNicholas for the solution(https://leetcode.com/problems/find-the-duplicate-number/solutions/72929/o-nlogn-binary-search-and-o-n-circle-detect/)

# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  slow, fast = nums[0], nums[ nums[0] ]

  while slow != fast
    slow = nums[slow]
    fast = nums[ nums[fast] ]
  end

  tag = 0
  while tag != slow
    tag  = nums[tag]
    slow = nums[slow]
  end

  return slow
end
