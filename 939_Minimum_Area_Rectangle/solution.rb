# @param {Integer[][]} points
# @return {Integer}
def min_area_rect(points)
  points_by_x = points.group_by(&:first).transform_values {|val| val.map {|arr| [arr.last, true]}.to_h }
  points_by_y = points.group_by(&:last).transform_values {|val| val.map {|arr| [arr.first, true]}.to_h }

  points.reject! {|x, y| (points_by_x[x].size == 1) || (points_by_y[y].size == 1) }

  min_area = nil
  0.upto(points.size - 1) do |index1|
    x_1, y_1 = points[index1]
    
    (index1 + 1).upto(points.size - 1) do |index2|
      x_2, y_2 = points[index2]

      next if ((x_2 - x_1).zero? || (y_2 - y_1).zero?)
      
      if (points_by_x[x_1][y_2]) && (points_by_x[x_2][y_1])
        area = (x_2 - x_1).abs * (y_2 - y_1).abs
        min_area = area if min_area.nil? || area < min_area
      end
    end
  end

  min_area || 0
end