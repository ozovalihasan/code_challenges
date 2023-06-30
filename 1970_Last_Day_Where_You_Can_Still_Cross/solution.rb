# @param {Integer} row
# @param {Integer} col
# @param {Integer[][]} cells
# @return {Integer}
def latest_day_to_cross(row, col, cells)
  cells.map! {|row_index, col_index| [row_index - 1, col_index - 1]} 
  @max_row_index = row - 1
  @max_col_index = col - 1

  @grid = Array.new(row) {Array.new(col, cells.size)}
  
  cells.each_with_index do |(row_index, col_index), index|
    @grid[row_index][col_index] = index
  end

  (1..@grid.map(&:max).min).bsearch do |reference_day|
    @reference_day = reference_day
    !check_grid
  end

end

def check_grid
  
  @checked = {}
  0.upto(@max_col_index) do |col_index|
    return true if check_cell(0, col_index)
  end

  false
end

STEPS = [[1, 0], [0, 1], [0, -1], [-1, 0]]
def check_cell(row_index, col_index)
  return unless within_bounds?(row_index, col_index)
  return if @checked[[row_index, col_index]]
  
  cell = @grid[row_index][col_index]
  return if cell <= @reference_day
  
  return true if row_index == @max_row_index
  @checked[[row_index, col_index]] = true

  STEPS.each do |row_inc, col_inc|
    return true if check_cell(row_index + row_inc, col_index + col_inc)
  end

  nil
end

def within_bounds?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end

def water?(cell)
  cell == 1
end