# @param {Integer[]} stone_value
# @return {String}
def stone_game_iii(stone_value)
  result = Array.new(3, 0)
  sum = 0

  stone_value.reverse_each do |stone|
    sum += stone
    result.unshift( sum - result.min).pop
  end

  case result[0] <=> sum / 2.0 
  when 1
    "Alice"
  when -1
    "Bob"
  else
    "Tie"
  end
end