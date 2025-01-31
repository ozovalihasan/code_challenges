# @param {Integer[][]} grid
# @return {Integer}
STEPS = [[-1, 0], [1, 0], [0, -1], [0, 1]].freeze

def largest_island(grid)
  @grid = grid
  @max_row_index = grid.size - 1
  @max_col_index = grid.first.size - 1

  @labels = Array.new(grid.size) { Array.new(grid.first.size) }

  @label_counts = [] 
  @label = 0
  @label_counts[@label] = 0
  @labels_next_to_zeros = {}
  grid.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      next if @labels[row_index][col_index]
      next if cell.zero?

      mark_cell(row_index, col_index)
      @label += 1
      @label_counts[@label] = 0
    end
  end

  max_total_area = if @label_counts.all?(&:zero?)
                     1
                   elsif @labels_next_to_zeros.empty?
                     0
                   else
                     @labels_next_to_zeros.map do |_coord, labels|
                       labels.uniq.sum { |label| @label_counts[label] } + 1
                     end.max || 1
                   end
  
  [max_total_area, @label_counts.max].max 
  
end

def mark_cell(row_index, col_index)
  return unless in_boundary?(row_index, col_index)
  return if @labels[row_index][col_index]

  if @grid[row_index][col_index].zero?
    (@labels_next_to_zeros[[row_index, col_index]] ||= []) << @label

    return 
  end

  @labels[row_index][col_index] = @label
  @label_counts[@label] += 1
  
  STEPS.each do |step_row, step_col|
    next_row_index = row_index + step_row
    next_col_index = col_index + step_col

    mark_cell(next_row_index, next_col_index)
  end
end

def in_boundary?(row_index, col_index)
  row_index.between?(0, @max_row_index) && col_index.between?(0, @max_col_index)  
end
