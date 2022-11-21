# @param {Character[][]} maze
# @param {Integer[]} entrance
# @return {Integer}
def nearest_exit(maze, entrance)
  prepare_maze(maze, entrance)
  
  @max_row_index = maze.size - 1
  @max_col_index = maze.first.size - 1

  @previous_stack = [ entrance.first, entrance.last ]
  @stack = []

  step = 0

  loop do
    step += 1
    
    until @previous_stack.empty?
      
      y_coor = @previous_stack.pop
      x_coor = @previous_stack.pop
      
      if (
        check_coor(maze, x_coor + 1, y_coor) ||
        check_coor(maze, x_coor - 1, y_coor) ||
        check_coor(maze, x_coor, y_coor + 1) ||
        check_coor(maze, x_coor, y_coor - 1)
      )
        return step
      end
    end
    
    return -1 if @stack.empty?

    @previous_stack = @stack
    @stack = []
    
  end

  -1
end

def prepare_maze(maze, entrance)
  maze.each do |row|
    row[0] = "exit" if row[0] == "."
    row[-1] = "exit" if row[-1] == "."
  end

  maze.first.each_with_index do |cell, index|
    maze[0][index] = "exit" if cell == "."
  end
  
  maze.last.each_with_index do |cell, index|
    maze[-1][index] = "exit" if cell == "."
  end
  
  maze[entrance.first][entrance.last] = "+"
end

def check_coor(maze, x_coor, y_coor)
  
  return false unless x_coor.between?(0, @max_row_index) && y_coor.between?(0, @max_col_index)
  cell = maze[x_coor][y_coor]

  if  cell == "exit"
    return true
  elsif cell == "+"
    return false
  else
    maze[x_coor][y_coor] = "+"
    @stack << x_coor
    @stack << y_coor
  end

  false
end
