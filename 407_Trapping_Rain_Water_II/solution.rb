# @param {Integer[][]} height_map
# @return {Integer}
DIRECTIONS = [[1, 0], [-1, 0], [0, 1], [0, -1]].freeze

def trap_rain_water(height_map)
  @height_map = height_map
  @checked = Array.new(height_map.size) { Array.new(height_map[0].size) }

  @max_row_index = height_map.size - 1
  @max_col_index = height_map[0].size - 1
  
  @coordinates = []
  [0, @max_row_index].each do |row_index|
    0.upto(@max_col_index).each do |col_index|
      @checked[row_index][col_index] = true
      add_coordinate(row_index, col_index)
    end
  end
 
  [0, @max_col_index].each do |col_index|
    0.upto(@max_row_index).each do |row_index|
      @checked[row_index][col_index] = true
      add_coordinate(row_index, col_index)
    end
  end

  @total_water = 0
  until @coordinates.empty?
    height, row_index, col_index = @coordinates.shift
    check_neighbors(row_index, col_index, height)
  end
  @total_water
end

def check_neighbors(row_index, col_index, height)
  DIRECTIONS.each do |row_step, col_step|
    neighbor_row_index = row_index + row_step
    neighbor_col_index = col_index + col_step

    next unless in_boundary?(neighbor_row_index, neighbor_col_index)  
    next if @checked[neighbor_row_index][neighbor_col_index]

    @checked[neighbor_row_index][neighbor_col_index] = true

    neighbor_height = @height_map[neighbor_row_index][neighbor_col_index]
    if neighbor_height <= height
      @total_water += height - neighbor_height
      check_neighbors(neighbor_row_index, neighbor_col_index, height)
    else
      @checked[neighbor_row_index][neighbor_col_index] = 1
      add_coordinate(neighbor_row_index, neighbor_col_index)
    end
  end
end

def add_coordinate(row_index, col_index)
  height = @height_map[row_index][col_index]
  index = @coordinates.bsearch_index { |checked_height, _, _| checked_height >= height } || @coordinates.size
  @coordinates.insert(index, [height, row_index, col_index])
end

def in_boundary?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
end
