# @param {Integer[][]} grid
# @return {Integer[][]}
def ones_minus_zeros(grid)
  row_diff = find_diff(grid)
  col_diff = find_diff(grid.transpose)
  
  (0...grid.size).map do |row_index|
    (0...grid.first.size).map do |col_index|
      row_diff[row_index] + col_diff[col_index]
    end
  end
end

def find_diff(grid)
  grid.map { |row| grid.first.size - (2 * row.count(0)) }
end
