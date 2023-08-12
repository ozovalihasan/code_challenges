# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  return 0 unless obstacle_grid[-1][-1] == 0
  obstacle_grid[-1][-1] = :finish

  @grid = obstacle_grid
  @max_row_index = @grid.size - 1
  @max_col_index = @grid.first.size - 1
  
  @memo = {}
  check_cell(0, 0)
end

STEPS = [[1, 0], [0, 1]]
def check_cell(row_index, col_index)
  return @memo[[row_index, col_index]] if @memo[[row_index, col_index]]
  return 0 unless row_index <= @max_row_index
  return 1 if @grid[row_index][col_index] == :finish
  return 0 unless @grid[row_index][col_index] == 0

  @memo[[row_index, col_index]] = STEPS.sum do |row_inc, col_inc|
                                    check_cell(row_index + row_inc, col_index + col_inc)
                                  end
end