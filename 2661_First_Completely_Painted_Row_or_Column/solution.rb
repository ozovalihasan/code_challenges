# @param {Integer[]} arr
# @param {Integer[][]} mat
# @return {Integer}
def first_complete_index(arr, mat)
  coordinates = []
  mat.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      coordinates[cell] = [row_index, col_index]
    end
  end

  row_num = mat.size
  col_num = mat[0].size

  row_count = Array.new(row_num, col_num)
  col_count = Array.new(col_num, row_num)
  
  arr.each_with_index do |num, index|
    row_index, col_index = coordinates[num]
    row_count[row_index] -= 1  
    col_count[col_index] -= 1  

    return index if row_count[row_index].zero? || col_count[col_index].zero?
  end
end
