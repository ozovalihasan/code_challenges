# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  row_size = grid.first.size
  grid.sum { |row| row_size - (row.bsearch_index(&:negative?) || row_size) }
end