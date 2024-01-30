# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)
  time_points = time_points.map { |time| convert_to_minutes(time) }.sort
  time_points << (time_points.first + (24 * 60))
  time_points.each_cons(2).map { |first, second| second - first }.min
end

def convert_to_minutes(time)
  hour, min = time.split(':').map!(&:to_i)
  (hour * 60) + min
end
