# @param {Integer[][]} move_time
# @return {Integer}
STEPS = [[0, 1], [1, 0], [0, -1], [-1, 0]]
def min_time_to_reach(move_time)
  @max_row_index = move_time.length - 1
  @max_col_index = move_time[0].length - 1
  visited = Array.new(@max_row_index + 1) { Array.new(@max_col_index + 1, false) }
  queue = [[0, 0, 0]]

  until queue.empty?
    current_time, row, col = queue.pop
    next if visited[row][col]

    visited[row][col] = current_time
    
    STEPS.each do |row_step, col_step|
      next_row = row + row_step
      next_col = col + col_step
      next unless in_boundaries?(next_row, next_col) && !visited[next_row][next_col]
      
      movement_cost = (next_row + next_col).odd? ? 1 : 2
      inserted_time = [current_time , move_time[next_row][next_col]].max + movement_cost
      return inserted_time if target_arrived?(next_row, next_col)

      queue_index = queue.bsearch_index {|checked_time, _, _| (checked_time <= inserted_time) } || queue.length
      queue.insert(queue_index, [inserted_time, next_row, next_col])
    end
  end
end

def target_arrived?(row, col)
  row == @max_row_index && col == @max_col_index
end

def in_boundaries?(row, col)
  row.between?(0, @max_row_index) && col.between?(0, @max_col_index)
end