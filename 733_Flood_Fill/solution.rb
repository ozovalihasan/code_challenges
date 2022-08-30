# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  return image if image[sr][sc] == color

  check_cell(image, sr, sc, image[sr][sc], color)
  image
end

def check_cell(image, sr, sc, previous_color, color)
  return if image.check(sr).check(sc) != previous_color
  
  image[sr][sc] = color
  [[-1,0], [1,0], [0,-1], [0, 1]].each do |change_row, change_col| 
    check_cell(image, sr + change_row, sc + change_col, previous_color, color)
  end
  
end

class Array
  def check(index)
    return [] unless index >= 0 && self[index]
    self[index]
  end
end