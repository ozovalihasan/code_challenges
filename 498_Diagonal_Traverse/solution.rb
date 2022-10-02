# @param {Integer[][]} mat
# @return {Integer[]}
def find_diagonal_order(mat)
  result = []
  
  mat.each_with_index do |row, index|
    row.each_with_index do |cell, index2|
      result[index + index2] = [] unless result[index + index2]
      result[index + index2] << cell
    end
  end

  result2 = []
  result.each_with_index do |arr, index| 
    if index.even?
      result2.concat arr.reverse
    else
      result2.concat arr
    end
  end
  result2

end