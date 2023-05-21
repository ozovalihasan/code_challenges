# @param {Integer[][]} grid
# @return {Integer}
STEPS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
def shortest_bridge(grid)
  label = nil
  @grid = grid
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  @island_parts = []
  island_found = false
  0.upto(@max_row_index) do |row_index|
    row = @grid[row_index]
    0.upto(@max_col_index) do |col_index|
      next unless row[col_index] == 1

      label = 2
      update_label(row_index, col_index, label)
      island_found = true
      break
    end

    break if island_found
  end

  @connected_to_the_other_island = false
  loop do
    @next_borders = []
    @island_parts.each do |row_index, col_index|
      expand_island(row_index, col_index, label)

      return label - 2 if @connected_to_the_other_island
    end  

    @island_parts = @next_borders
    label += 1
  end
end

def expand_island(row_index, col_index, label)
  states(row_index, col_index).each_with_index do |state, state_index|
    next unless state

    row_inc, col_inc = STEPS[state_index]

    case @grid[row_index + row_inc][col_index + col_inc] 
    when 0 
      @grid[row_index + row_inc][col_index + col_inc]  = label
      @next_borders << [row_index + row_inc, col_index + col_inc]
    when 1
      @connected_to_the_other_island = true
    end
  end
end

def update_label(row_index, col_index, label)
  return unless @grid[row_index][col_index] == 1
  
  @island_parts << [row_index, col_index]
  @grid[row_index][col_index] = label

  states(row_index, col_index).each_with_index do |state, state_index|
    next unless state

    row_inc, col_inc = STEPS[state_index]
    update_label(row_index + row_inc, col_index + col_inc, label)
  end
  
end

def states(row_index, col_index)
  [ 
    @max_row_index > row_index, 
    0 < row_index, 
    @max_col_index > col_index, 
    0 < col_index 
  ]
end