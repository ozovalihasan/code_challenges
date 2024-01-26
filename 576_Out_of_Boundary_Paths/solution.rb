MODULO = (10 ** 9) + 7

# @param {Integer} m
# @param {Integer} n
# @param {Integer} max_move
# @param {Integer} start_row
# @param {Integer} start_column
# @return {Integer}
def find_paths(m, n, max_move, start_row, start_column)
  @max_row_index = m - 1
  @max_col_index = n - 1
  @result = Array.new(max_move + 1) { Array.new(m) { [] } }
  check(start_row, start_column, max_move)
end

def check(row_index, col_index, move)
  return 0 if move.negative?
  return 1 unless row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
  return @result[move][row_index][col_index] if @result[move][row_index][col_index]
  
  move -= 1
  @result[move + 1][row_index][col_index] = (
    check(row_index + 1, col_index, move) +
    check(row_index - 1, col_index, move) +
    check(row_index, col_index + 1, move) +
    check(row_index, col_index - 1, move)
  ) % MODULO
end
