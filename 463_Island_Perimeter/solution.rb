# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  borders = 0 
  ones = 0
  grid.each_with_index do |row, index|
    row.each_with_index do |cell, index2|
      next unless cell == 1      
      ones += 1
      borders += 1  if index2 + 1 < grid.first.size && grid[ index ][ index2 + 1 ] == 1
      borders += 1  if index + 1 < grid.size && grid[ index + 1 ][ index2 ] == 1
    end
  end
  
  (ones * 4) - (borders * 2) 
end