# @param {Integer[][]} matrix
# @return {Integer}
def longest_increasing_path(matrix)
  @hash = Array.new(matrix.size) {Array.new(matrix.first.size, nil)}

  @size = matrix.size
  @row_size = matrix.first.size
  @steps = [[1,0], [-1, 0], [0, 1], [0, -1]]
  matrix.each_with_index do |row, index1|
    row.each_with_index do |_, index2|
      check_neighbours(matrix, index1, index2)  
    end
  end

  @hash.map(&:max).max
end

def check_neighbours(matrix, index1, index2)
  return @hash[index1][index2] if @hash[index1][index2]
  
  cell = matrix[index1][index2]
  result = 1
  
  @steps.each do |step_1, step_2|
    if in_range?(index1 + step_1, index2 + step_2) && matrix[index1 + step_1][index2 + step_2] > cell
      result = [check_neighbours(matrix, index1 + step_1, index2 + step_2 ) + 1, result].max
    end
  end

  @hash[index1][index2] = result
end

def in_range?(index1, index2)
  index1 >= 0 && index1 < @size && index2 >= 0 && index2 < @row_size
end