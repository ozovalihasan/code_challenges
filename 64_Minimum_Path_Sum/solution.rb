# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  
  @cache = Array.new(grid.size) {[]}
  @cache[@max_row_index][@max_col_index] = grid[-1][-1]
  check_neighbour_cells(grid, 0, 0)

  @cache.first.first
end

def check_neighbour_cells(grid, row_index, col_index)
  unless @cache[row_index][col_index]
    down = check_neighbour_cells(grid, row_index + 1, col_index) if row_index < @max_row_index
    down ||= Float::INFINITY
    
    right = check_neighbour_cells(grid, row_index, col_index + 1) if col_index < @max_col_index
    right ||= Float::INFINITY
    
    @cache[row_index][col_index] = [down, right].min + grid[row_index][col_index]
  end

  @cache[row_index][col_index]
end