# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
  previous_time = 0
  release_times.zip(keys_pressed.chars).max_by do |release_time, key|
    press_time = release_time - previous_time
    previous_time = release_time
    [press_time, key]
  end.last
end