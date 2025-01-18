DIRECTIONS = {
  1 => [0, 1],
  2 => [0, -1],
  3 => [1, 0],
  4 => [-1, 0],
}.freeze

def min_cost(grid)
  @grid = grid
  @max_row_index = grid.size - 1
  @max_col_index = grid[0].size - 1

  @costs = Array.new(grid.size) { Array.new(grid[0].size) }
  @cells_to_visit = [[[0, 0]]]

  @target_reached = false
  current_cost = 0
  until @target_reached
    while @cells_to_visit[current_cost]&.any?
      row, col = @cells_to_visit[current_cost].pop
      explore_cell(row, col, current_cost)
    end
    current_cost += 1
  end

  @costs[-1][-1]
end

private

def explore_cell(row, col, cost)
  return if @costs[row][col]

  @costs[row][col] = cost
  return @target_reached = true if target_reached?(row, col)

  explore_neighbors(row, col, cost)
end

def explore_neighbors(row, col, current_cost)
  DIRECTIONS.each do |direction, (row_offset, col_offset)|
    new_row = row + row_offset
    new_col = col + col_offset

    next unless valid_position?(new_row, new_col)

    new_cost = if @grid[row][col] == direction
                 current_cost
               else
                 current_cost + 1
               end

    @cells_to_visit[new_cost] ||= []
    @cells_to_visit[new_cost] << [new_row, new_col]
  end
end

def valid_position?(row, col)
  row.between?(0, @max_row_index) && col.between?(0, @max_col_index)
end

def target_reached?(row, col)
  row == @max_row_index && col == @max_col_index
end
