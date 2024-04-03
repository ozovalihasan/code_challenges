# @param {Character[][]} board
# @param {String} word
# @return {Boolean}

def exist?(board, word)
  @word = word
  @max_char_index = word.size - 1
  @max_row_index = board.size - 1
  @max_col_index = board.first.size - 1

  if word.match(/^#{word[0]}+/)[0].size > word.match(/#{word[-1]}+$/)[0].size
    word.reverse!
  end

  @steps = [[-1, 0], [1, 0], [0, -1], [0, 1]]

  0.upto(@max_row_index) do |row_index|
    0.upto(@max_col_index) do |col_index|
      return true if check_cell(board, row_index, col_index, 0)
    end
  end

  false
end

def check_cell(board, row_index, col_index, char_index)
  return false unless within_bounds?(row_index, col_index)
  return false unless board[row_index][col_index] == @word[char_index]
  return true if char_index == @max_char_index
  
  cell = board[row_index][col_index]
  board[row_index][col_index] = :used
  
  @steps.each do |step_row, step_col|
    return true if check_cell(board, row_index + step_row, col_index + step_col, char_index + 1)  
  end

  board[row_index][col_index] = cell
  false
end

def within_bounds?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end