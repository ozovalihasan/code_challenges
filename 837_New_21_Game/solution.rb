# Thanks to @Hegwin for the solution(https://leetcode.com/problems/new-21-game/solutions/3055487/ruby-reverse-solution-with-image-examplanation-step-by-step/)

# @param {Integer} n
# @param {Integer} k
# @param {Integer} max_pts
# @return {Float}
def new21_game(n, k, max_pts)
  return 1 unless (k + max_pts) - n - 1 >= 0
  
  result = Array.new(k, nil)
  result.concat(Array.new(n - k + 1, 1)) 
  result.concat(Array.new((k + max_pts) - n - 1, 0)) 

  sum = result[k ... k + max_pts].sum

  (k - 1).downto(0) do |index|
    result[index] = sum * (1.0 / max_pts)
    sum += result[index] - result[index + max_pts ]
  end

  result[0].round(5)
end