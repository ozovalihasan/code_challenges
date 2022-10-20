# Thanks to @k_duder(https://leetcode.com/k_duder/) to share own solution(https://leetcode.com/problems/minimum-absolute-difference/discuss/1636767/ruby-1-liner)

# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  arr.sort.each_cons(2).group_by {|first, second| second - first }.min.pop
end