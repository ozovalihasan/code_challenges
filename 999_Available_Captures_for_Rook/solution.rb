# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  rook = nil
  
  board.each_with_index do |row, index|
    row.each_with_index do |cell, index2|
      if cell == "R"
        rook = [index, index2]
        break
      end
    end
    break if rook
  end

  result = 0

  row = board.map { |row| row[rook.last] }.join
  result += 1 if row.match?(/R\.*p/)
  result += 1 if row.match?(/p\.*R/)

  column = board[rook.first].join 
  result += 1 if column.match?(/R\.*p/)
  result += 1 if column.match?(/p\.*R/)

  result
end