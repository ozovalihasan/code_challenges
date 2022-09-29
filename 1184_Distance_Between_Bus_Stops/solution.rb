# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  [
    distance.slice!([start, destination].min, (destination - start).abs).sum, 
    distance.sum
  ].min
end