# @param {Integer[][]} board
# @return {Integer}
def snakes_and_ladders(board)
  Board.new(board).find_min_moves
end

class Board
  attr_reader :board, :last_cell

  def initialize(board)
    @board = [-1] + board.reverse.map.with_index do |row, index|
      index.odd? ? row.reverse : row
    end.flatten
    @last_cell = -2
    @board[-1] = @last_cell
  end

  def last_cell?(cell)
    cell == @last_cell || @board[cell] == @last_cell
  end

  def [](index)
    @board[index]
  end

  def find_min_moves
    starting_cell = 1
    step = 0
    visited = {}
    visited[starting_cell] = true
    previous = nil
    current = [ starting_cell ]
    
    until current.empty? 
      previous = current
      current = Set.new
      
      previous.each do |num|
        return step if last_cell?(num)

        (num + 1..num + 6).each do |num2| 
          next if visited[num2]
          
          visited[num2] = true
          current << num2
        end
      end

      current.map! do |num|
        self[num] != -1 ? self[num] : num
      end

      step += 1
    end
    
    -1
    
  end
end