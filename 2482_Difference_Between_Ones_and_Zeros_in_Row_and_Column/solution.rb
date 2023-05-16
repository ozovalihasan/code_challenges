# @param {Integer[][]} grid
# @return {Integer[][]}
def ones_minus_zeros(grid)
  row_diff = find_diff(grid)
  col_diff = find_diff(grid.transpose)
  
  result = []
  grid.each_index do |row_index|
    result[row_index] = []
    
    grid.first.each_index do |col_index|
      result[row_index][col_index] = row_diff[row_index] + col_diff[col_index]
    end
  end

  result
end

def find_diff(grid)
  row_diff = []
  grid.each_with_index do |row, index|
    row_diff[index] = row.count(1) - row.count(0)
  end
  row_diff
end