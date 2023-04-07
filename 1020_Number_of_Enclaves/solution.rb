# @param {Integer[][]} grid
# @return {Integer}
def num_enclaves(grid)
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1

  not_walkable_islands_count = 0

  grid.each_with_index do |row, row_index|
    row.each_with_index do |_cell, col_index|
      @walkable = false
      @connected_islands_count = 0

      check_cell(grid, row_index, col_index)

      not_walkable_islands_count += @connected_islands_count unless walkable?
    end
  end

  not_walkable_islands_count
end

def walkable?
  @walkable
end

def between_borders?(row_index, col_index)
  row_index >= 0 &&
    row_index <= @max_row_index &&
    col_index >= 0 &&
    col_index <= @max_col_index
end

def on_a_border?(row_index, col_index)
  row_index.zero? ||
    row_index == @max_row_index ||
    col_index.zero? ||
    col_index == @max_col_index
end

def check_cell(grid, row_index, col_index)
  return unless between_borders? row_index, col_index
  return unless island? grid[row_index][col_index]

  @connected_islands_count += 1
  @walkable = true if (not @walkable) && (on_a_border? row_index, col_index)

  grid[row_index][col_index] = :checked

  check_cell(grid, row_index + 1, col_index)
  check_cell(grid, row_index - 1, col_index)
  check_cell(grid, row_index, col_index + 1)
  check_cell(grid, row_index, col_index - 1)
end

def island?(cell)
  cell == 1
end
