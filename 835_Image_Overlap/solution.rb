# @param {Integer[][]} img1
# @param {Integer[][]} img2
# @return {Integer}
def largest_overlap(img1, img2)
  size_row = img1.size
  size_col = img1.first.size

  img1 = matrix_to_one_D_increasing(img1)
  img2 = matrix_to_one_D_increasing(img2)
  

  return img1.size if (img1 & img2).size == img1.size

  @max = (img1 & img2).size
  img_new = []

  [[1, 0], [-1, 1]].each do |step, unavailable_column|
    
    img_new.clear
    img_new << img1

    1.upto(size_row - 1) do
      result = img_new.last
                      .reject {|num| num % size_col == unavailable_column}
                      .map {|num| num + step }

      break unless find_max(result, img2)

      img_new << result
    end

    img_new.each do |result|
      next if result.size <= @max
      loop do
        
        result = result.reject {|num| num > (size_col * (size_row - 1)) }
                       .map {|num| num + size_col }

        break unless find_max(result, img2)
      end

    end

    img_new.each do |result|
      next if result.size <= @max
      loop do
        
        result = result.reject {|num| num <= size_col }
                       .map {|num| num - size_col }

        break unless find_max(result, img2)
      end

    end
    
  end  
  @max
  
end

def matrix_to_one_D_increasing(matrix)
  matrix.flatten
        .map.with_index {|num, index| num == 1 ? index + 1 : 0 }
        .reject(&:zero?)
end

def find_max(arr, img2)
  return false if arr.size <= @max
  size = (arr & img2).size
        
  if size > @max
    @max = size
  end
  true
end
