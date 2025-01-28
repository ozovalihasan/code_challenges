# @param {Integer[][]} grid
# @return {Integer}
STEPS = [[0, 1], [0, -1], [1, 0], [-1, 0]]
def find_max_fish(grid)
  @grid = grid
  @max_row_index = @grid.size - 1
  @max_col_index = @grid[0].size - 1

  max_result = 0
  @checked = Array.new(@grid.size) { Array.new(@grid[0].size, false) }
  grid.size.times do |row_index|
    grid.first.size.times do |col_index|
      next if @checked[row_index][col_index]   

      @result = 0
      check_cell(row_index, col_index) 
      max_result = [max_result, @result].max
    end
  end

  max_result
end

private

def check_cell(row_index, col_index)
  return unless in_boundary?(row_index, col_index)
  return if @checked[row_index][col_index]

  @checked[row_index][col_index] = true

  cell = @grid[row_index][col_index]
  return if cell.zero?

  @result += cell

  STEPS.each do |row_step, col_step|
    check_cell(row_index + row_step, col_index + col_step)
  end
end

def in_boundary?(row, col)
  row >= 0 && row <= @max_row_index && col >= 0 && col <= @max_col_index
end
