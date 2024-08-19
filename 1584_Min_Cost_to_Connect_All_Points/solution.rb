# @param {Integer[][]} points
# @return {Integer}
"I have solved but it is necessary to optimize"
def min_cost_connect_points(points)
  return 0 if points.size == 1

  connected_points = []

  points.each_with_index do |point_out, index_out|
    connected_points[index_out] = []
    (0).upto(points.size - 1) do |index_in|
      
      point_in = points[index_in]
      distance = (point_in[0] - point_out[0]).abs + (point_in[1] - point_out[1]).abs

      connected_points[index_out] << [distance, index_in, index_out]
    end 
    connected_points[index_out].delete_at(index_out)
    connected_points[index_out] = connected_points[index_out].sort_by!(&:first).first(4)

  end


  connected_points.flatten!(1)
  connected_points.sort_by!(&:first)
  total_cost = 0
  used = {connected_points.first[1] => true}
  (points.size - 1).times do
    connected_points.each_with_index do |(distance, first_index, last_index), index|
      if (used[first_index] && !used[last_index]) || (!used[first_index] && used[last_index])
        connected_points.delete_at(index)
        total_cost += distance

        used[first_index] = true
        used[last_index] = true
        break
      end
    end
  end

  total_cost
end