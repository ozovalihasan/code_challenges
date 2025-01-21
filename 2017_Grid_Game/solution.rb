# @param {Integer[][]} grid
# @return {Integer}
def grid_game(grid)
  sums = [grid.first.sum, - grid.last.last]

  min_result = Float::INFINITY
  grid.first.length.times do |index|
    sums[0] -= grid[0][index]
    sums[1] += grid[1][index - 1]

    min_result = [sums.max, min_result].min
  end
  
  min_result
end
