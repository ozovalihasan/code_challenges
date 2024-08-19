"I couldn't solve"

STEPS = [[0, 1], [1, 0], [-1, 0], [0, -1]]
# @param {Integer[][]} heights
# @return {Integer}
def minimum_effort_path(heights)
  @heights = heights
  @max_row_index = heights.size - 1
  @max_col_index = heights.first.size - 1
  

  @efforts = Array.new(heights.size) {Array.new(heights.first.size, Float::INFINITY)}
  @necessary_efforts = [[0, 0, 0]]

  until @necessary_efforts.empty? || @efforts[@max_row_index][@max_col_index] <= @necessary_efforts.first.first  
    checked_effort = @necessary_efforts.pop
    check_cell(*checked_effort)
  end

  @efforts[@max_row_index][@max_col_index]
end

def check_cell(necessary_effort, row_index, col_index)
  return unless necessary_effort < @efforts[row_index][col_index]
  @efforts[row_index][col_index] = necessary_effort

  cell = @heights[row_index][col_index]
  STEPS.each do |step_row, step_col|
    update_cell(necessary_effort, row_index + step_row, col_index + step_col, cell)
  end
end

def update_cell(necessary_effort, row_index, col_index, previous)
  return unless within_bounds?(row_index, col_index)
  cell = @heights[row_index][col_index]
  effort = [(previous - cell).abs, necessary_effort].max
  index = @necessary_efforts.bsearch_index {|previous_effort, _, _| previous_effort >= effort} || @necessary_efforts.size

  @necessary_efforts.insert(index, [effort, row_index, col_index])
end

def within_bounds?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end