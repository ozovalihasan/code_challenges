# @param {Integer[][]} mat
# @return {Integer}
def num_special(mat)
  col_count = mat.transpose.map! { |row| row.count(1) }

  count = 0
  mat.each do |row|
    next unless row.count(1) == 1

    col_index = row.index(1)
    count += 1 if col_count[col_index] == 1
  end
  
  count
end
