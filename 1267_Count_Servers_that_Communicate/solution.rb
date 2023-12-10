# @param {Integer[][]} grid
# @return {Integer}
def count_servers(grid)
  rows = Array.new(grid.size) { [] }
  cols = Array.new(grid.first.size) { [] }
  result = Set.new

  grid.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      next unless cell == 1
      
      result << [row_index, col_index] if rows[row_index].size >= 1
      result << [row_index, rows[row_index].first] if rows[row_index].size == 1
      rows[row_index] << col_index 

      result << [row_index, col_index] if cols[col_index].size >= 1
      result << [cols[col_index].first, col_index] if cols[col_index].size == 1
      cols[col_index] << row_index
    end
  end

  result.size
end
