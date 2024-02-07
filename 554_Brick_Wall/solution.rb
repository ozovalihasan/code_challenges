# @param {Integer[][]} wall
# @return {Integer}
def least_bricks(wall)
  rows_count = wall.size
  wall_with_edge_points = wall.map do |row|
    total = 0
    row.map! {|width| total += width}
    row[...-1]
  end
  uncrossed_bricks_count = wall_with_edge_points.flatten.tally.values.max || 0

  rows_count - uncrossed_bricks_count
end