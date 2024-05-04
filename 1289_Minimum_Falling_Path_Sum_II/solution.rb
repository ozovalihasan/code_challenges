# @param {Integer[][]} grid
# @return {Integer}
def min_falling_path_sum(grid)
  size = grid.first.size
  return grid.last.first if size == 1
  result = Array.new(size, 0)
  grid.each do |row|
    min, second = result.min(2)
    index = result.index(min)
    result = Array.new(size, result[index])
    result[index] = second
    result = result.zip(row).map(&:sum)
  end

  result.min
end