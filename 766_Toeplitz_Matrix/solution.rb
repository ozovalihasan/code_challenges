# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  matrix[1..].each_with_index do |row, index|
    return false unless row[1..].eql? matrix[index][..-2]  
  end  
  
  true
end