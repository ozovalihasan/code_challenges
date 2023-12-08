# @param {Integer[][]} mat
# @return {Integer[]}
def row_and_maximum_ones(mat)
  count = 0
  result = [0, count]
  mat.each_with_index do |row, index|
    row_count = row.count(1)

    if row_count > count
      count = row_count
      result = [index, count]
    end
  end

  result
end
