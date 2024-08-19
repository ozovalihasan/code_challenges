# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Integer}
def num_submatrix_sum_target(matrix, target)
  @target = target
  @matrix_memo = check_matrix(matrix)
  @transpose_memo = check_matrix(matrix.transpose)
  @count = {}
  
  matrix.size.times do |start_row_index|
    matrix[start_row_index].size.times do |start_col_index|
      calculate_next_matrix(start_row_index, start_row_index, start_col_index, start_col_index, 0, :col)      
      calculate_next_matrix(start_row_index, start_row_index, start_col_index, start_col_index, 0, :row)      
    end
  end

  @count.size
end

def calculate_next_matrix(start_row_index, end_row_index, start_col_index, end_col_index, result, direction)
  return if end_row_index >= @matrix_memo.size || end_col_index >= @transpose_memo.size

  result_next = nil
  if direction == :row
    result_next = result + @matrix_memo[end_row_index][[start_col_index, end_col_index]]
    @count[[start_row_index, end_row_index, start_col_index, end_col_index]] = true if result_next == @target
  end

  if direction == :col
    result_next = result + @transpose_memo[end_col_index][[start_row_index, end_row_index]]
    @count[[start_row_index, end_row_index, start_col_index, end_col_index]] = true if result_next == @target
  end

  calculate_next_matrix(start_row_index, end_row_index + 1, start_col_index, end_col_index, result_next, :row)
  calculate_next_matrix(start_row_index, end_row_index, start_col_index, end_col_index + 1, result_next, :col)
end

def check_matrix(matrix)
  memo = []
  
  matrix.each_with_index do |row, row_index|
    memo[row_index] = {}
    row.size.times do |col_index_start|
      total = 0
      col_index_start.upto(row.size - 1) do |col_index_end|
        total += row[col_index_end]
        memo[row_index][[col_index_start, col_index_end]] = total
      end
    end
  end

  memo
end
