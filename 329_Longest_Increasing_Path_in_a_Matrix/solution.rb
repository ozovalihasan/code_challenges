# @param {Integer[][]} matrix
# @return {Integer}
def longest_increasing_path(matrix)
  @matrix = matrix
  @size = matrix.size
  @row_size = matrix.first.size
  @hash = Array.new(@size) {Array.new(@row_size, nil)}
  @steps = [[1,0], [-1, 0], [0, 1], [0, -1]]
  @max = 0
  
  matrix.each_with_index do |row, index_1|
    row.each_with_index do |_, index_2|
      check_neighbours(index_1, index_2)  
    end
  end

  @max
end

def check_neighbours(index_1, index_2)
  return @hash[index_1][index_2] if @hash[index_1][index_2]
  
  cell = @matrix[index_1][index_2]
  result = 1
  
  @steps.each do |step_1, step_2|
    if in_range?(index_1 + step_1, index_2 + step_2) && @matrix[index_1 + step_1][index_2 + step_2] > cell
      result = [check_neighbours(index_1 + step_1, index_2 + step_2 ) + 1, result].max
    end
  end

  @max = [@max, result].max
  @hash[index_1][index_2] = result
end

def in_range?(index_1, index_2)
  index_1 >= 0 && index_1 < @size && index_2 >= 0 && index_2 < @row_size
end