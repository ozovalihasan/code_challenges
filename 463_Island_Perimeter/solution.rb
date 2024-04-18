# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  count_neighbor_borders(grid) + count_neighbor_borders(grid.transpose)
end

def count_neighbor_borders(matrix)
  matrix.map do |row|
    row << 0
    row.each_cons(2).count([1,0])
  end.sum * 2
end