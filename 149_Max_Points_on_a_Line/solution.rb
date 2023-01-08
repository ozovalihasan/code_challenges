# @param {Integer[][]} points
# @return {Integer}
def max_points(points)
  return points.size if points.size <= 2

  points_found = 0
  until points[points_found].nil?
    point1 = points.pop

    slopes = Hash.new(0)
    points.each { |point2| slopes[ slope(point1, point2) ] += 1 }
    
    points_found = [points_found, slopes.values.max + 1].max
  end    

  points_found 
end

def slope(point1, point2)
  return Float::INFINITY if point1.first == point2.first

  (point1.last - point2.last) / (point1.first - point2.first).to_f
end