STEPS = [[-1, 0], [1, 0], [0, -1], [0, 1]]

# @param {String[]} grid
# @return {Integer}
def shortest_path_all_keys(grid)
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  
  @keys_count = 0
  0.upto(@max_row_index) do |row_index|
    0.upto(@max_col_index) do |col_index|
      @keys_count += 1 if key?(grid[row_index][col_index])
    end
  end

  
  0.upto(@max_row_index) do |row_index|
    0.upto(@max_col_index) do |col_index|
      if starting_point?(grid[row_index][col_index])
        return check_cell(grid, row_index, col_index)
      end
    end
  end
end

def check_cell(grid, start_row_index, start_col_index)
  visited = Array.new(grid.size) {Array.new(grid.first.size) {{}}}
  cells = []
  next_cells = [[start_row_index, start_col_index, {}]]
  total_step = -1
  
  until next_cells.empty?
    total_step += 1
    cells = next_cells
    next_cells = []

    cells.each do |row_index, col_index, keys|
      next unless within_bounds?(row_index, col_index)

      cell = grid[row_index][col_index]
      if key?(cell)
        keys = keys.clone
        keys[cell] = true
      end
      
      next if lock?(cell) && keys[cell.downcase].nil?
      next if wall?(cell) || visited[row_index][col_index][keys] 
      
      return total_step if keys.size == @keys_count

      visited[row_index][col_index][keys] = true

      STEPS.each do |step_row, step_col|
        next_cells << [row_index + step_row, col_index + step_col, keys.clone] 
      end  
    end
    
  end

  -1
end

def key?(cell)
  cell.match?(/[a-z]/)
end

def lock?(cell)
  cell.match?(/[A-Z]/)
end

def wall?(cell)
  cell == "#"
end

def starting_point?(cell)
  cell == "@"
end

def within_bounds?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end
