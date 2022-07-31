# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  count = Math.sqrt(n+1).floor
  n -= (count * count + count) / 2
  until n <= count
    count += 1
    n -= count
  end
  count
end