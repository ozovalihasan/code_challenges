# @param {Integer[][]} grid
# @return {Integer[]}
def find_column_width(grid)
  grid.transpose.map do |row| 
                   row.map {|cell| cell.to_s.size}.max
                 end
end