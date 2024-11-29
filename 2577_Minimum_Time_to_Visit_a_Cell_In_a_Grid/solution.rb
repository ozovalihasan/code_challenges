# @param {Integer[][]} grid
# @return {Integer}
def minimum_time(grid)
  @grid = grid
  return -1 if unable_to_move?

  @checked_grid = Array.new(grid.size) { Array.new(grid[0].size) }
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1

  @time_coord_pairs = { 0 => [[0, 0]] }
  
  @target_reached = false
  until @target_reached
    time = @time_coord_pairs.keys.min
    @time_coord_pairs[time]&.each do |row, col|
      check_neighbors(row, col, time + 1)
    end

    @time_coord_pairs.delete(time)
  end

  @checked_grid[@max_row_index][@max_col_index]
end

def check_position(row, col, time)
  return if @target_reached

  return if @checked_grid[row][col]

  min_moves_to_arrive = calculate_min_moves_to_arrive(row, col)
  @checked_grid[row][col] = [min_moves_to_arrive, time].max
  (@time_coord_pairs[@checked_grid[row][col]] ||= []) << [row, col]
  
  @target_reached = true if target_reached?(row, col) 
end

def calculate_min_moves_to_arrive(row, col)
  @grid[row][col] + ((@grid[row][col] + row + col).odd? ? 1 : 0)
end

def check_neighbors(row, col, time)
  check_position(row + 1, col, time) if row < @max_row_index
  check_position(row, col + 1, time) if col < @max_col_index
  check_position(row - 1, col, time) if row.positive?
  check_position(row, col - 1, time) if col.positive?
end

def target_reached?(row, col)
  @max_row_index == row && @max_col_index == col
end

def unable_to_move?
  @grid[0][1] > 1 && @grid[1][0] > 1
end
