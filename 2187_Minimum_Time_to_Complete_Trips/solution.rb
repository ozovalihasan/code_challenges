# @param {Integer[]} time
# @param {Integer} total_trips
# @return {Integer}
def minimum_time(time, total_trips)
  max_trip = time.max
  min_time = (total_trips / time.sum {|trip_time| (max_trip / trip_time) + 1}) * max_trip
  max_time = ((total_trips / time.sum {|trip_time| (max_trip / trip_time) }) + 1) * max_trip

  (min_time..max_time).bsearch do |current_time|
    time.sum {|trip_time| current_time / trip_time} >= total_trips
  end
end