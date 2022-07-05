# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  return false unless check_rows(board)
  return false unless check_rows(board.transpose)

  grouped_board = [[[],[],[]],[[],[],[]],[[],[],[]]]
  board.each_with_index do | row, index |
    row.each_with_index do | number, index2 |
      grouped_board[index / 3][index2 / 3] << number
    end
  end

  return false unless check_rows(grouped_board.flatten 1)

  true
end

def check_rows(board)
  board.each do |row|
    
    return false unless (row - ["."]).uniq.size == (row - ["."]).size
    
  end
  true
end