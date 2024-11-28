# @param {Integer[][]} grid
# @return {Integer}
STEPS = [[0, 1], [1, 0], [0, -1], [-1, 0]].freeze

def minimum_obstacles(grid)
  @grid = grid
  @checked_grid = Array.new(grid.size) { Array.new(grid[0].size) }
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1

  @current_positions = []
  @next_positions = []

  check_position(0, 0, 0)

  until target_reached?
    @current_positions = @next_positions
    @next_positions = []

    @current_positions.each do |row, col|
      count = @checked_grid[row][col]
      check_neighbors(row, col, count)
    end
  end

  @checked_grid[@max_row_index][@max_col_index]
end

def check_position(row, col, count)
  return if @checked_grid[row][col]

  @next_positions << [row, col]

  if @grid[row][col] == 1
    @checked_grid[row][col] = count + 1
  else
    @checked_grid[row][col] = count
    check_neighbors(row, col, count)
  end
end

def check_neighbors(row, col, count)
  check_position(row + 1, col, count) if row < @max_row_index
  check_position(row, col + 1, count) if col < @max_col_index
  check_position(row - 1, col, count) if row.positive?
  check_position(row, col - 1, count) if col.positive?
end

def target_reached?
  @checked_grid[@max_row_index][@max_col_index]
end
