# @param {Integer[]} piles
# @return {Integer}
def stone_game_ii(piles)
  @piles_size = piles.size
  @cache = Array.new(@piles_size) {[]}
  sum = 0
  @piles_sums = piles.reverse.map {|num, index| sum = num + sum }.reverse
  
  turn_of_the_game(0, :alice, 1)
end

def turn_of_the_game(start_index, turn, m)
  return 0 if start_index >= @piles_size
  return @cache[start_index][m] if @cache[start_index][m]

  subresult = []
  1.upto(m * 2) do |total_piles|

    subresult << turn_of_the_game(
                  start_index + total_piles, 
                  turn == :alice ? :bob : :alice, 
                  m > total_piles ? m : total_piles
                )
  end

  @cache[start_index][m] = @piles_sums[start_index] - subresult.min
end