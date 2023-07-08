# @param {Integer[]} weights
# @param {Integer} k
# @return {Integer}
def put_marbles(weights, k)
  cons_sums = weights.each_cons(2).map(&:sum).sort
  cons_sums.last(k - 1).sum - cons_sums.first(k - 1).sum
end