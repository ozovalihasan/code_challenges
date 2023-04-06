# @param {Integer[][]} grid
# @return {Integer}
def closed_island(grid)
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1

  closed_islands_count = 0
  
  grid.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      next unless island? grid[row_index][col_index] 
      
      @closed_island = true

      check_cell(grid, row_index, col_index)
      
      closed_islands_count += 1 if closed_island?
    end
  end

  closed_islands_count
end

def closed_island?
  @closed_island
end

def between_borders? row_index, col_index
  row_index >= 0 && row_index <= @max_row_index && col_index >= 0 && col_index <= @max_col_index
end

def on_a_border? row_index, col_index
  row_index == 0 || row_index == @max_row_index || col_index == 0 || col_index == @max_col_index
end

def check_cell(grid, row_index, col_index)
  return unless between_borders? row_index, col_index

  return unless island? grid[row_index][col_index] 

  @closed_island = false if on_a_border? row_index, col_index

  grid[row_index][col_index] = :checked

  check_cell(grid, row_index + 1, col_index)
  check_cell(grid, row_index - 1, col_index)
  check_cell(grid, row_index, col_index + 1)
  check_cell(grid, row_index, col_index - 1)
  
end

def island?(cell)
  cell == 0
end