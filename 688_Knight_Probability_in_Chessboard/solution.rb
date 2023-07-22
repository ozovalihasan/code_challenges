# @param {Integer} n
# @param {Integer} k
# @param {Integer} row
# @param {Integer} column
# @return {Float}
def knight_probability(n, k, row, column)
  @max_row_index = n - 1
  @max_col_index = n - 1
  @cache = Array.new(k + 1) {{}}
  check_board(row, column, k)
end

STEPS = [[-2, 1], [-2, -1], [2, 1], [2, -1], [-1, 2], [-1, -2], [1, 2], [1, -2]]
def check_board(row_index, col_index, total_steps)
  return @cache[total_steps][[row_index, col_index]] if @cache[total_steps][[row_index, col_index]]
  return 0 unless on_board?(row_index, col_index) 
  return @cache[total_steps][[row_index, col_index]] = 1 if total_steps.zero?
  
  
  @cache[total_steps][[row_index, col_index]] = STEPS.sum do |row_inc, col_inc|
                                                check_board(row_index + row_inc, col_index + col_inc, total_steps - 1)
                                              end / 8.0
end

def on_board?(row_index, col_index) 
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
end