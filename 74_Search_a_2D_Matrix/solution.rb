# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  row_index = matrix.bsearch_index {|row| row.last >= target}
  return false if row_index.nil?
  
  matrix[row_index].bsearch {|cell| cell >= target} == target
end