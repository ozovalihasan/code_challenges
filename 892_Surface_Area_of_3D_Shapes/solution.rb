# @param {Integer[][]} grid
# @return {Integer}
def surface_area(grid)
  result = 0

  grid.each_with_index do |row, row_index|
    row.each_with_index do |el, col_index|

      unless el.zero?
        result += 2
      end
      
      result += (el - find_value(find_value(grid, row_index - 1), col_index)).abs 
      result += (el - find_value(find_value(grid, row_index), col_index - 1)).abs

    end

  end
  
  result += grid.map(&:last).sum
  result += grid.last.sum 
end

def find_value(arr_value, index)
  return 0 if arr_value == 0 || index == -1
  arr_value[index]      
end