# @param {Integer[]} distances
# @param {Float} hour
# @return {Integer}
def min_speed_on_time(distances, hour)
  return -1 if hour <= (distances.size - 1)

  max_speed = distances.max
  if hour.round < (distances.size)
    possible_max_speed = (distances.last / (hour - hour.to_i)).ceil
    max_speed = possible_max_speed if possible_max_speed > max_speed
  end

  distances.map!(&:to_f)

  (1..max_speed).bsearch do |speed| 
    distances.inject(0) {|sum, distance| sum.ceil + (distance / speed)} <= hour
  end || -1
end