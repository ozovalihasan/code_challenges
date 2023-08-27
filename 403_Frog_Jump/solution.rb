def can_cross(stones)
  @stones = stones.to_set
  @max_stone = stones.last
  @checked = Set.new

  # Use a hash to store already checked positions along with their jump size
  @memoization = {}

  check_stone(0, 0)
end

def check_stone(stone, jump)
  return false if stone > @max_stone || !@stones.include?(stone)
  return false if @checked.include?([stone, jump])

  return true if stone == @max_stone

  return @memoization[[stone, jump]] if @memoization.key?([stone, jump])

  possible_jumps = [jump + 1, jump, jump - 1].select { |j| j > 0 }
  result = possible_jumps.any? do |next_jump|
    check_stone(stone + next_jump, next_jump)
  end

  @checked << [stone, jump]
  @memoization[[stone, jump]] = result

  result
end
