STEPS  = [
  [-1, -1], [-1, 0], [-1, 1], 
  [ 0, -1],          [ 0, 1],
  [ 1, -1], [1 , 0], [ 1, 1]
]

# @param {Integer[][]} grid
# @return {Integer}
def shortest_path_binary_matrix(grid)
  return -1 unless grid[0][0].zero?

  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1

  check_necessary_cells = [[0, 0, 1]]

  until check_necessary_cells.empty?
    selected_row, selected_col, step = check_necessary_cells.shift

    return step if (selected_row == @max_row_index) && (selected_col == @max_col_index)

    step += 1

    STEPS.each do |row_step, col_step| 
      next_selected_row = selected_row + row_step
      next_selected_col = selected_col + col_step 

      next unless in_boundary? next_selected_row, next_selected_col
      next unless grid[next_selected_row][next_selected_col].zero?

      grid[next_selected_row][next_selected_col] = 1
      check_necessary_cells << [next_selected_row, next_selected_col, step] 
    end
  end
  
  -1
end

def in_boundary? row_index, col_index
  (row_index >= 0 && row_index <= @max_row_index) && (col_index >= 0 && col_index <= @max_col_index)
end