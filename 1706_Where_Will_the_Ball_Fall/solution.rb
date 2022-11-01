# @param {Integer[][]} grid
# @return {Integer[]}
def find_ball(grid)

  total_col = grid.first.size
  
  0.upto(total_col - 1).map do |index_col|

    grid.each do |row|
      if row[index_col] == 1 && row[index_col + 1] == 1
        index_col += 1
      elsif row[index_col] == -1 && row[index_col - 1] == -1 && index_col > 0
        index_col -= 1
      else
        index_col = -1
        break
      end
    end

    index_col
  end
  
end