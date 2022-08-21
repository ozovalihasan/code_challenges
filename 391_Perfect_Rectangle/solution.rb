# @param {Integer[][]} rectangles
# @return {Boolean}
def is_rectangle_cover(rectangles)
  hash = Hash.new(0)
  corners_values = rectangles.each do |(x1, y1, x2, y2)|
    hash[[x1, y1]] += 1
    hash[[x2, y2]] += 1
    hash[[x1, y2]] -= 1
    hash[[x2, y1]] -= 1
  end
  
  corners_values = hash.values
  
  return false unless corners_values.count {|value| value == 1 ||  value == -1 } == 4

  return false unless corners_values.none? {|value| value > 1 ||  value < -1 }

  true
end