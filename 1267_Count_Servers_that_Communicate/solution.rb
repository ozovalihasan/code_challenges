# @param {Integer[][]} grid
# @return {Integer}
def count_servers(grid)
  row_counts = grid.map(&:sum)
  col_counts = grid.transpose.map(&:sum)
  
  selected_cols = col_counts.filter_map.with_index { |count, col_index| col_index if count == 1 }

  result = row_counts.sum
  return result if selected_cols.empty?

  selected_rows = row_counts.filter_map.with_index { |count, rows_index| rows_index if count == 1 }
  alone_servers = selected_cols.count do |col_index|
    selected_rows.any? do |row_index|
      grid[row_index][col_index] == 1
    end
  end

  result - alone_servers
end
