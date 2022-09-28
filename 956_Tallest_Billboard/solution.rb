# Thanks to [yidong_w](https://leetcode.com/yidong_w) for [the solution](https://leetcode.com/problems/tallest-billboard/discuss/219700/Python-DP-clean-solution(1D))

"I solved this challenge by checking another one solution, but it is not clear yet. So, check to make it clearer"

# @param {Integer[]} rods
# @return {Integer}
def tallest_billboard(rods)
  dp = {}
  dp.default = 0
  dp[0] = 0

  half_sum = rods.sum / 2

  rods.each do |rod|
    
    cur = {}
    cur.default = 0

    dp.keys.each do |s|
      cur[s + rod] = [dp[s] + rod, cur[s + rod]].max unless (s + rod) > half_sum
      cur[s] = [dp[s], cur[s]].max 
      cur[s - rod] = [dp[s], cur[s - rod]].max unless (s - rod) < -half_sum
    end
    
    dp = cur
  end

  dp[0]
end
