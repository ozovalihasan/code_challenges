
# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
  @grid = grid
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  @results = [ 0 ]
  
  0.upto(@max_row_index) do |row_index|
    row = @grid[row_index]
    0.upto(@max_col_index) do |col_index|
      next unless row[col_index] == 1

      @results << 0
      check_cell(row_index, col_index)
    end
  end

  @results.max
end

STEPS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
def check_cell(row_index, col_index)
  return unless on_island?(row_index, col_index) && @grid[row_index][col_index] == 1
  
  @grid[row_index][col_index] = :checked
  @results[-1] += 1

  STEPS.each do |row_inc, col_inc|
    check_cell(row_index + row_inc, col_index + col_inc)
  end
end

def on_island?(row_index, col_index) 
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
end