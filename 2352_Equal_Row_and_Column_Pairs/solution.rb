# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  grid, grid_transpose = grid.tally, grid.transpose.tally
  grid_transpose.default = 0

  grid.sum {|row, count| grid_transpose[row] * count }
end