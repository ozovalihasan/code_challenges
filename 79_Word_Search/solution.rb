# @param {Character[][]} board
# @param {String} word
# @return {Boolean}

##########################
# The original method is `exist`, but this name is causing an issue. So, it is changed as `exist?`
##########################
def exist?(board, word)
  
  @max_row_index = board.size - 1
  @max_col_index = board.first.size - 1

  if word.match(/^#{word[0]}+/)[0].size > word.match(/#{word[-1]}+$/)[0].size
    word.reverse!
  end

  @steps = [[-1, 0], [1, 0], [0, -1], [0, 1]]

  0.upto(@max_row_index) do |row_index|
    0.upto(@max_col_index) do |col_index|
      return true if check_cell(board, row_index, col_index, word)
    end
  end

  false
end

def check_cell(board, row_index, col_index, word)
  return false unless within_bounds?(row_index, col_index)
  return false unless board[row_index][col_index] == word[0]
  return true if word.size == 1
  
  unchecked_letters = word[1..]
  cell = board[row_index][col_index]
  board[row_index][col_index] = "used"
  
  @steps.each do |step_row, step_col|
    return true if check_cell(board, row_index + step_row, col_index + step_col, unchecked_letters)  
  end

  board[row_index][col_index] = cell
  false
end

def within_bounds?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end