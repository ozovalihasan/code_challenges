STEPS = [[0, 1], [1, 0], [-1, 0], [0, -1]]

# # @param {Integer[][]} heights
# # @return {Integer}
def minimum_effort_path(heights)
  @heights = heights
  @max_row_index = heights.size - 1
  @max_col_index = heights.first.size - 1

  @checked_cells = Array.new(heights.size) { Array.new(heights.first.size, false) }

  @not_checked_cells = [[0, 0, 0]]
  
  @reached = false
  @max_effort = 0

  until @reached 
    row_index, col_index, necessary_effort = @not_checked_cells.shift
    @max_effort = necessary_effort
    
    next if @checked_cells[row_index][col_index]
    
    check_all_sides(row_index, col_index)
  end

  @max_effort
end

def check_all_sides(row_index, col_index)
  @checked_cells[row_index][col_index] = true

  if row_index == @max_row_index && col_index == @max_col_index
    @reached = true
    return 
  end

  height = @heights[row_index][col_index]
  STEPS.each do |step_row, step_col|
    new_row = row_index + step_row
    new_col = col_index + step_col

    check_cell(new_row, new_col, height)
  end
end

def check_cell(row_index, col_index, previous_height)
  return unless within_bounds?(row_index, col_index)
  return if @checked_cells[row_index][col_index]
  return if @reached
  
  height = @heights[row_index][col_index]
  current_effort = (height - previous_height).abs

  if current_effort <= @max_effort
    check_all_sides(row_index, col_index)
  else
    index = @not_checked_cells.bsearch_index { |_, _, effort| current_effort <= effort } || @not_checked_cells.size
    @not_checked_cells.insert(index, [row_index, col_index, current_effort])
  end
end

def within_bounds?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end
