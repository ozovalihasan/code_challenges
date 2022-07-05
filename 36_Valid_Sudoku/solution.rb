# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  return false unless check_rows(board.transpose)
  return false unless check_rows(board)
  
  grouped_board = [[{},{},{}],[{},{},{}],[{},{},{}]]
  board.each_with_index do | row, index_row |
    row.each_with_index do | number, index_number |
      next if number == "."
      return false if grouped_board[index_row / 3][index_number / 3][number]
        
      grouped_board[index_row / 3][index_number / 3][number] = true
    end
  end
  
  true
end

def check_rows(board)
  board.each do |row|
    return false unless (row.uniq - ["."]) == (row - ["."])
  end
  true
end