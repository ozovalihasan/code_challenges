# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix(mat)
  @grid = mat
  @max_row_index = @grid.size - 1
  @max_col_index = @grid.first.size - 1
  
  @cells = [] 
  mat.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|

      if cell.zero?
        @cells << [row_index, col_index] 
      else
        @grid[row_index][col_index] = :empty
      end

    end
  end
  
  @next_cells = []
  distance = 1
  until @cells.empty?
    @cells.each {|row_index, col_index| check_cell(row_index, col_index, distance) }
    
    distance += 1
    @cells = @next_cells
    @next_cells = []
  end

  mat
end

STEPS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
def check_cell(row_index, col_index, distance)
  STEPS.each do |row_inc, col_inc|
    neighbour_row_index = row_index + row_inc
    neighbour_col_index = col_index + col_inc
    next unless on_island?(neighbour_row_index, neighbour_col_index) && @grid[neighbour_row_index][neighbour_col_index] == :empty
    
    @grid[neighbour_row_index][neighbour_col_index] = distance
    @next_cells << [neighbour_row_index, neighbour_col_index]
  end
end

def on_island?(row_index, col_index) 
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
end