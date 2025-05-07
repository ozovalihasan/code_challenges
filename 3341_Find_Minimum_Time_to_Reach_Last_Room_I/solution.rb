# @param {Integer[][]} move_time
# @return {Integer}
STEPS = [[0, 1], [1, 0], [0, -1], [-1, 0]]
def min_time_to_reach(move_time)
  @max_row_index = move_time.length - 1
  @max_col_index = move_time[0].length - 1
  @visited = Array.new(@max_row_index + 1) { Array.new(@max_col_index + 1, false) }
  # @visited[0][0] = true
  queue = [[0, 0, 0]]
  until queue.empty?
    current_time, row, col = queue.shift
    # p ({current_time:, row:, col:})
    next if @visited[row][col]

    @visited[row][col] = current_time
    if row == @max_row_index && col == @max_col_index
      # @visited.each {p _1}
      return current_time
    end
 
    STEPS.each do |step|
      new_row = row + step[0]
      new_col = col + step[1]
      next unless in_boundaries?(new_row, new_col) && !@visited[new_row][new_col]

      added_time = [current_time + 1, move_time[new_row][new_col] + 1].max
      queue_index = queue.bsearch_index {|(time, _, _)| time > added_time } || queue.length
      queue.insert(queue_index, [added_time, new_row, new_col])
    end
  end
end

def in_boundaries?(row, col)
  row.between?(0, @max_row_index) && col.between?(0, @max_col_index)
end