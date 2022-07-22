# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  
  triangle[1..].each_with_index do |arr, index|

    triangle[index+1][0] += triangle[index].first
    
    1.upto( arr.size-2 ) do |index2|
      triangle[index+1][index2] += triangle[index][index2 - 1..index2].min
    end

    triangle[index+1][-1] += triangle[index].last

  end
  triangle.last.min
end