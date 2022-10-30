# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer}
def shortest_path(grid, k)
  @step = Float::INFINITY
  @grid_max_row_index = grid.size - 1
  @grid_max_col_index = grid.first.size - 1
  @hash = Hash.new(Float::INFINITY)

  check_cells(grid, 0, 0, k, 0)
  
  @step == Float::INFINITY ? -1 : @step
end

def check_cells(grid, row_index, col_index, brake_cell, step)
  if @hash[[row_index, col_index, brake_cell]] <= step
    return
  else
    @hash[[row_index, col_index, brake_cell]] = step
  end
  
  return unless row_index.between?(0, @grid_max_row_index) && col_index.between?(0, @grid_max_col_index)

  return if @step == (@grid_max_row_index + @grid_max_col_index) || @step <= step 
  
  if row_index == (@grid_max_row_index) && col_index == (@grid_max_col_index)
    
    @step = step
    return 
  end
  
  if grid[row_index][col_index] == 1
    return if brake_cell.zero?

    brake_cell -= 1
  elsif grid[row_index][col_index] > 1
    return 
  end

  grid[row_index][col_index] += 2

  step += 1 

  check_cells(grid, row_index + 1, col_index, brake_cell, step)
  check_cells(grid, row_index, col_index + 1, brake_cell, step)
  check_cells(grid, row_index, col_index - 1, brake_cell, step)
  check_cells(grid, row_index - 1, col_index, brake_cell, step)

  grid[row_index][col_index] -= 2

end