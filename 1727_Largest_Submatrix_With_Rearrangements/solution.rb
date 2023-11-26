# @param {Integer[][]} matrix
# @return {Integer}
def largest_submatrix(matrix)
  zeros = Array.new(matrix.size) { [] }
  matrix.each_with_index do |row, row_index|
    row.each_with_index { |cell, col_index| zeros[row_index] << col_index if cell.zero? }
  end

  result = 0
  max_row_index = matrix.size - 1
  col_size = matrix.first.size
  matrix.each_index do |start_row_index|
    valid_columns = (0...col_size).to_a

    start_row_index.upto(max_row_index) do |end_row_index|
      break if (result / (matrix.size - start_row_index)) >= valid_columns.size
      
      valid_columns -= zeros[end_row_index]
      new_result = valid_columns.size * (end_row_index - start_row_index + 1)
      result = new_result if new_result > result
    end
  end

  result
end
