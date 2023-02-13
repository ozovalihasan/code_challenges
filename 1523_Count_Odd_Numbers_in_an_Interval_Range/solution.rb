# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
  (high - low) / 2 + ( (high.odd? || low.odd?) ? 1 : 0 )
end