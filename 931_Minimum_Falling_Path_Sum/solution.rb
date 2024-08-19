# @param {Integer[][]} matrix
# @return {Integer}
def min_falling_path_sum(matrix)
  current = matrix.last
  
  (matrix.size - 2).downto(0).each do |row_index|
    previous = [Float::INFINITY, *current]
    current.clear
    
    matrix[row_index].each_with_index do |cell, index_col|
      current[index_col] = cell + previous.slice(index_col, 3).min
    end
    
  end

  current.min
end