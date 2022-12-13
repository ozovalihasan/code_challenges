# @param {Integer[][]} matrix
# @return {Integer}
def min_falling_path_sum(matrix)
  current = matrix.first
  
  1.upto(matrix.size - 1).each do |row_index|
    previous = current
    previous.unshift Float::INFINITY
    current = []
    
    matrix[row_index].each_with_index do |cell, index_col|
      current[index_col] = cell + previous.slice(index_col, 3).min
    end
    
  end

  current.min
end