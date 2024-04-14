# @param {Integer[][]} intervals
# @return {Integer[]}
def find_right_interval(intervals)
  starts = intervals.map.with_index do |(start_point, _end_point), index|
    [start_point, index]
  end
  starts.sort_by!(&:first)
  
  intervals.map do |_start_point, end_point|
    starts.bsearch {|start_point, _index| start_point >= end_point}&.last || -1
  end
end