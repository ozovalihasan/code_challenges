# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  first = coordinates.first
  slope = calculate_slope(first, coordinates.last)
  
  coordinates[1...-1].all? {|point| slope == calculate_slope(first, point) }
end

def calculate_slope(point1, point2)
  x1, y1 = point1
  x2, y2 = point2

  return Float::INFINITY if x2 == x1
  
  (y2 - y1).to_f / ( x2-x1 ).to_f
end