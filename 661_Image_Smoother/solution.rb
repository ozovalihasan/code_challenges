STEPS = [
  [-1, -1], [-1, 0], [-1, 1],
  [0, -1]          , [ 0, 1],
  [ 1, -1], [ 1, 0], [ 1, 1],
]

# @param {Integer[][]} img
# @return {Integer[][]}
def image_smoother(img)
  @max_row = img.size - 1
  @max_col = img.first.size - 1
  img.map.with_index do |row, row_index|
    row.map.with_index do |cell, col_index|
      total_cells_number = 1
      total = cell

      STEPS.each do |step_row, step_col|
        neighbour_row_index = row_index + step_row
        neighbour_col_index = col_index + step_col

        if in_boundary?(neighbour_row_index, neighbour_col_index)
          total_cells_number += 1
          total += img[neighbour_row_index][neighbour_col_index]
        end
      end

      total / total_cells_number
    end
  end
end

def in_boundary?(row_index, col_index)
  row_index.between?(0, @max_row) && col_index.between?(0, @max_col)
end