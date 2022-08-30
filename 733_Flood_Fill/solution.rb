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
  return if sr < 0 ||  sc < 0 || (image.at(sr)&.at(sc) != previous_color)
  
  image[sr][sc] = color
  [-1,1].each do |change| 
    check_cell(image, sr + change, sc, previous_color, color)
    check_cell(image, sr, sc + change, previous_color, color)
  end
  
end
