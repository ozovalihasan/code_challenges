# @param {Integer[][]} grid
# @return {Integer}
def max_distance(grid)
  land_coord = []
  
  grid.each_with_index do |row, row_index|

    row.each_with_index do |cell, column_index|
      if cell == 1
        land_coord << [row_index, column_index]
      end
    end

  end

  max_row_index = grid.size - 1
  max_col_index = grid.first.size - 1

  result = []

  current_coord = land_coord

  step = 0
  loop do
    sub_coord = []
    current_coord.map do |row_index, col_index|
      
      if (row_index - 1) >= 0 && grid[row_index - 1][col_index].zero?
        update_grid(grid, sub_coord, row_index - 1, col_index)
      end
      
      if (row_index + 1) <= max_row_index && grid[row_index + 1][col_index].zero?
        update_grid(grid, sub_coord, row_index + 1, col_index)
      end
      
      if (col_index - 1) >= 0 && grid[row_index][col_index - 1].zero?
        update_grid(grid, sub_coord, row_index, col_index - 1)
      end
      
      if (col_index + 1) <= max_col_index && grid[row_index][col_index + 1].zero?
        update_grid(grid, sub_coord, row_index, col_index + 1)
      end
      
    end
    current_coord = sub_coord
    
    break if current_coord.empty?

    step += 1
  end

  step.zero? ? -1 : step
end

def update_grid(grid, sub_coord, row_index, col_index)
  grid[row_index][col_index] = 1
  sub_coord << [row_index, col_index]
end