# @param {Integer} n
# @return {Integer}
def pivot_integer(n)
  sum = (n * (n + 1)) / 2
  (1..n).to_a.bsearch { |num| sum + num <=> num * (num + 1) } || -1
end