# @param {Integer[]} dist
# @param {Integer[]} speed
# @return {Integer}
def eliminate_maximum(dist, speed)
  times = dist
            .zip(speed)
            .map { |local_dist, local_speed| local_dist / local_speed.to_f }.sort

  times.find_index.with_index do |time, index|
    time <= index
  end || times.length
end
