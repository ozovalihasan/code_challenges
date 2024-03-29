# @param {Integer} n
# @param {Integer[]} ranges
# @return {Integer}
def min_taps(n, ranges)
  intervals = ranges.filter_map.with_index {|range, index| [index - range, index + range] if range > 0 }
  intervals.sort_by!(&:first)

  garden_max_index = n 
  intervals << [garden_max_index, garden_max_index]
  
  count = 0
  current_index = 0
  next_index = 0
  intervals.each do |start_index, end_index|
    return -1 if start_index > next_index
    
    if start_index > current_index
      count += 1
      current_index = next_index
    end

    next_index = end_index if end_index > next_index
  end
  
  count
end