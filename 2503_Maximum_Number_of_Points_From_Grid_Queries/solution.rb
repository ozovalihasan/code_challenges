# @param {Integer[][]} grid
# @param {Integer[]} queries
# @return {Integer[]}
STEPS = [ [-1, 0], [1, 0], [0, -1], [0, 1]].freeze
def max_points(grid, queries)
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1
  
  @queries = queries.uniq.sort.reverse
  @results = {}
  
  @cells_needed_check = [[0, 0, grid[0][0]]]
  grid[0][0] *= -1

  ref = @queries.pop
  count = 0
  until @cells_needed_check.empty?
    if @cells_needed_check[-1][2] < ref
      row_index, col_index, _ = @cells_needed_check.pop

      count += 1
      STEPS.each do |step_row, step_col|
        next_row_index = row_index + step_row
        next_col_index = col_index + step_col
        
        if in_boundary?(next_row_index, next_col_index)
          next_val = grid[next_row_index][next_col_index] 
          next if next_val.negative?

          grid[next_row_index][next_col_index] *= -1 
          index = @cells_needed_check.bsearch_index {|_, _, checked_val| next_val > checked_val  } || @cells_needed_check.size
          @cells_needed_check.insert(index, [next_row_index, next_col_index, next_val])  
        end
      end
    else
      @results[ref] = count
      ref = @queries.pop
    end

    break if ref.nil?
  end
  
  @results[ref] = count if ref
  @queries.each { |query| @results[query] = count }
  queries.map { |query| @results[query] }
end

def in_boundary?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)
end
