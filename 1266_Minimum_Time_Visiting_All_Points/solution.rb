# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  points.each_cons(2).sum do |start_point, end_point|
    start_x, start_y = start_point
    end_x, end_y = end_point

    x_diff = (start_x - end_x).abs
    y_diff = (start_y - end_y).abs

    [x_diff, y_diff].max
  end
end
