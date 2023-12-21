# @param {Integer[][]} points
# @return {Integer}
def max_width_of_vertical_area(points)
  points.map(&:first).sort!.each_cons(2).map { |first, second| second - first }.max
end
