# @param {String} path
# @return {Boolean}
DIRECTIONS = {
  "W"=> [-1, 0],
  "E"=> [1, 0],
  "S"=> [0, -1],
  "N"=> [0, 1]
}
def is_path_crossing(path)
  current_position = [0, 0]
  checked = {}
  checked[current_position.clone] = true

  path.each_char do |direction|
    steps = DIRECTIONS[direction]
    current_position[0] += steps.first
    current_position[1] += steps.last
    
    return true if checked[current_position]

    checked[current_position.clone] = true
  end

  false
end