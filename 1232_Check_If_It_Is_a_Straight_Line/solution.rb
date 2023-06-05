# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  first_point = coordinates.first
  slope = calculate_slope(first_point, coordinates.last)
  
  coordinates[1...-1].all? {|selected_point| slope == calculate_slope(first_point, selected_point) }
end

def calculate_slope(point1, point2)
  coord_x1, coord_y1 = point1
  coord_x2, coord_y2 = point2

  return Float::INFINITY if coord_x2 == coord_x1
  
  (coord_y2 - coord_y1).to_f / ( coord_x2 - coord_x1 ).to_f
end