# @param {Integer} n
# @return {Integer}
def num_tilings(n)
  result = {1 => 1, 2 => 2, 3 => 5}

  4.upto(n) do |num|
    result[num] = result[num - 1] * 2 + result[num - 3]
  end
  
  result[n] % (10**9 + 7)
end