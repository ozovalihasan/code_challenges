# @param {Integer} row_num
# @param {Integer} col_num
# @param {Integer[][]} guards
# @param {Integer[][]} walls
# @return {Integer}
def count_unguarded(row_num, col_num, guards, walls)
  grid = Array.new(row_num) { Array.new(col_num, nil) }
  
  walls.each do |row_index, col_index|
    grid[row_index][col_index] = :occupied
  end
  
  guards.each do |row_index, col_index|
    grid[row_index][col_index] = :occupied
  end

  max_row_index = row_num - 1
  max_col_index = col_num - 1
  
  guards.each do |row_index, col_index|
    (row_index - 1).downto(0) do |checked_row_index|
      break if grid[checked_row_index][col_index] == :occupied

      grid[checked_row_index][col_index] = :guarded
    end

    (row_index + 1).upto(max_row_index) do |checked_row_index|
      break if grid[checked_row_index][col_index] == :occupied
      
      grid[checked_row_index][col_index] = :guarded
    end

    (col_index - 1).downto(0) do |checked_col_index|
      break if grid[row_index][checked_col_index] == :occupied

      grid[row_index][checked_col_index] = :guarded
    end

    (col_index + 1).upto(max_col_index) do |checked_col_index|
      break if grid[row_index][checked_col_index] == :occupied 
      
      grid[row_index][checked_col_index] = :guarded
    end
  end

  grid.sum { |row| row.count nil }
end
