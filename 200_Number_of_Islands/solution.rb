STEPS = [[1, 0], [-1, 0], [0, 1], [0, -1]].freeze

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  @grid = grid
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  
  count_islands = 0
  grid.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      if cell == "1"
        check_cell(row_index, col_index)
        count_islands += 1
      end
    end
  end

  count_islands
end

def check_cell(row_index, col_index)
  return unless in_boundary?(row_index, col_index)
  return unless @grid[row_index][col_index] == "1"
  
  @grid[row_index][col_index] = nil

  STEPS.each do |row_step, col_step|
    check_cell(row_index + row_step, col_index + col_step)
  end
end

def in_boundary?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
end