# @param {Integer[][]} intervals
# @return {Integer}
def erase_overlap_intervals(intervals)
  intervals.sort_by!(&:last)
  
  boundary = -Float::INFINITY
  count = 0
  intervals.each do |start_num, end_num|
    if boundary <= start_num
      boundary = end_num
      count += 1
    end
  end

  intervals.size - count
end