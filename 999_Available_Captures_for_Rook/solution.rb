# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  rook_column = nil
  rook_row = nil
  
  board.each_with_index do |row, index|
    row.each_with_index do |cell, index2|
      if cell == "R"
        rook_row = index
        rook_column = index2
        break
      end
    end
    break if rook_row
  end

  result = 0

  row = board.map { |row| row[rook_column] }.join
  result += 1 if row.match?(/R\.*p/)
  result += 1 if row.match?(/p\.*R/)

  column = board[rook_row].join 
  result += 1 if column.match?(/R\.*p/)
  result += 1 if column.match?(/p\.*R/)

  result
end