# @param {Integer[][]} is_water
# @return {Integer[][]}
DIRECTIONS = [[0, 1], [1, 0], [0, -1], [-1, 0]].freeze
def highest_peak(is_water)
  @max_row_index = is_water.length - 1
  @max_col_index = is_water.first.length - 1
  
  @result = Array.new(is_water.length) { Array.new(is_water[0].length) }
  @coordinates = []
  is_water.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      if cell == 1
        @result[row_index][col_index] = 0 
        @coordinates << [row_index, col_index]
      end
    end
  end

  until @coordinates.empty?
    row_index, col_index = @coordinates.shift
    height = @result[row_index][col_index]
    check_neighbors(row_index, col_index, height + 1)
  end
  
  @result
end

def check_neighbors(row_index, col_index, height)
  DIRECTIONS.each do |row_step, col_step|
    new_row_index = row_index + row_step
    new_col_index = col_index + col_step
    next unless in_boundary?(new_row_index, new_col_index)
    next if @result[new_row_index][new_col_index]

    @coordinates << [new_row_index, new_col_index]
    @result[new_row_index][new_col_index] = height
  end
end

def in_boundary?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
end
