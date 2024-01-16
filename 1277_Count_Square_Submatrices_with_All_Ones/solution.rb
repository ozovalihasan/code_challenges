# @param {Integer[][]} matrix
# @return {Integer}
def count_squares(matrix)
  transpose_matrix = matrix.transpose

  matrix.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      next if cell.zero?
      next if row_index.zero? || col_index.zero?

      previous_neighbor = matrix[row_index - 1][col_index - 1]
      
      previous_neighbor.downto(1) do |neighbor|
        if row[col_index - neighbor...col_index].none?(0) && transpose_matrix[col_index][row_index - neighbor...row_index].none?(0)
          row[col_index] = neighbor + 1
          break
        end
      end
    end
  end

  matrix.sum(&:sum)
end
