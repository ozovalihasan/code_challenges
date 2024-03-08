# @param {Integer[][]} intervals
# @return {Integer}
def remove_covered_intervals(intervals)
  intervals = intervals.sort_by {|first, second| [first, - second]}

  upper_limit = -Float::INFINITY
  remaining = intervals.size
  intervals.each do |first, second|
    if second <= upper_limit
      remaining -= 1
    else
      upper_limit = second
    end
  end

  remaining
end