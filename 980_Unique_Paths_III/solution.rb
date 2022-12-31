# @param {Integer[][]} grid
# @return {Integer}
def unique_paths_iii(grid)
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  @max_step = grid.flatten.count(0) + 1
  @end_cell = 2
  @available_cell = 0
  @result = 0
  grid.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      if cell == 1
        grid[row_index][col_index] = 0
        check_cells(grid, row_index, col_index, 0)
        break
      end
    end
  end
  @result
end

def check_cells(grid, row_index, col_index, step)
  @result += 1 if (grid[row_index][col_index] == @end_cell) && (step == @max_step)

  cell = grid[row_index][col_index]
  return unless cell == @available_cell

  grid[row_index][col_index] = "-"
  
  check_all_sides(grid, row_index, col_index, step)
  
  grid[row_index][col_index] = cell
end

def check_all_sides(grid, row_index, col_index, step)
  next_step = step + 1

  check_cells(grid, row_index - 1, col_index, next_step) if row_index > 0
  check_cells(grid, row_index + 1, col_index, next_step) if row_index < @max_row_index
  check_cells(grid, row_index, col_index - 1, next_step) if col_index > 0
  check_cells(grid, row_index, col_index + 1, next_step) if col_index < @max_col_index
end