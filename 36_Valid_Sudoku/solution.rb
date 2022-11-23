# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  valid_rows?(board) && valid_rows?(board.transpose) && valid_3_by_3?(board)
end

def valid_rows?(board)
  board.none? {|row| repeated_cell?(row) }
end

def valid_3_by_3?(board)
  board.each_slice(3).each do |rows|
    0.upto(2) do |index|
      return false if repeated_cell?( rows[0].pop(3).concat( rows[1].pop(3) ).concat( rows[2].pop(3) ) )
    end
  end
  
  true
end

def repeated_cell?(arr)
  arr.group_by(&:itself).tap{|groups| groups.delete(".")}.any? {|key, cells| cells.size > 1 }
end
