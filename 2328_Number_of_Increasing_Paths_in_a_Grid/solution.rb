STEPS = [[-1, 0], [1, 0], [0, -1], [0, 1]]
MOD = 10**9 + 7
# @param {Integer[][]} grid
# @return {Integer}
def count_paths(grid)
  @grid = grid
  @result_grid = Array.new(grid.size) {Array.new(grid.first.size, nil)}
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  @total_result = 0

  0.upto(@max_row_index) do |row_index|
    0.upto(@max_col_index) do |col_index|
      @total_result += check_cell(row_index, col_index, -Float::INFINITY)
    end
  end
  
  @total_result % MOD
end

def check_cell(row_index, col_index, previous)
  return 0 unless within_bounds?(row_index, col_index)

  cell = @grid[row_index][col_index]
  return 0 unless cell > previous

  return @result_grid[row_index][col_index] if @result_grid[row_index][col_index]
  
  result = STEPS.sum do |step_row, step_col|
    check_cell(row_index + step_row, col_index + step_col, cell)
  end + 1

  @result_grid[row_index][col_index] = result % MOD
end


def within_bounds?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end