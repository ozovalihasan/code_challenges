# @param {Integer[][]} points
# @return {Integer}
def find_min_arrow_shots(points)
  points.sort_by!(&:first)
  shoot = 0
  index = points.size - 1
  
  while index >= 0
    shoot += 1
    shoot_point = points[index].first
    index -= 1 while index >= 0 && shoot_point <= points[index].last
  end

  shoot
end