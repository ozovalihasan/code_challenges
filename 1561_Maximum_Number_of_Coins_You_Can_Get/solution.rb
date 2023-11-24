# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
  piles.sort.last(piles.size * 2 / 3).each_slice(2).sum(&:first)
end
