# @param {Integer[][]} matrix
# @return {Integer}
def largest_submatrix(matrix)
  result = 0
  zeros = []
  matrix.each_with_index do |row, row_index|
    zeros[row_index] = []
    
    row.each_with_index do |cell, col_index| 
      zeros[row_index] << col_index if cell.zero?
    end
  end

  max_row_index = matrix.size - 1
  col_size = matrix.first.size
  matrix.each_index do |row_index|
    valid_columns = (0...col_size).to_a

    row_index.upto(max_row_index) do |row_index2|
      break if result / (matrix.size - row_index) >= valid_columns.size
      
      valid_columns -= zeros[row_index2]
      new_result = valid_columns.size * (row_index2 - row_index + 1)
      result = new_result if new_result > result
    end
  end

  result
end
