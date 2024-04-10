# @param {Integer[]} deck
# @return {Integer[]}
def deck_revealed_increasing(deck)
  deck.sort!
  result = []
  indices = (0...deck.size).to_a
  while indices.first
    result[indices.shift] = deck.shift
    indices.push indices.shift
  end
  
  result
end