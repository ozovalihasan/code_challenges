# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  result = 0
  
  grid.each_with_index do |row, index|
    row.each_with_index do |cell, index2|
      next unless cell == 1      
      result += 4
      result -= 2 if index >= 1 && grid[ index - 1 ][ index2 ] == 1
      result -= 2 if index2 >= 1 && grid[ index ][ index2 - 1 ] == 1
    end
  end

  result
end