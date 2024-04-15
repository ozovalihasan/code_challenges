# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
  rows = grid.map(&:max)
  columns = grid.transpose.map(&:max)
  
  rows.product(columns).sum(&:min) - grid.flatten.sum
end