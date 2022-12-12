# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  previous, current = 0, 1
  n.times { previous, current = current, current + previous }
  current
end