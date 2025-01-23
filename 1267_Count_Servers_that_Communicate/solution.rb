# @param {Integer[][]} grid
# @return {Integer}
def count_servers(grid)
  row_counts = grid.map(&:sum)
  col_counts = grid.transpose.map(&:sum)
  
  selected_cols = []
  col_counts.each_with_index do |count, index|
    selected_cols << index if count == 1
  end

  result = (row_counts.sum + col_counts.sum) / 2

  return result if selected_cols.empty?

  grid.each_with_index do |row, row_index|
    next unless row_counts[row_index] == 1

    result -= selected_cols.count do |col_index|
      row[col_index] == 1 && col_counts[col_index] == 1
    end
  end

  result
end
