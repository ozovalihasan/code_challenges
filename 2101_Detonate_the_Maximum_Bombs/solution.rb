# @param {Integer[][]} bombs
# @return {Integer}
def maximum_detonation(bombs)
  @connected = Array.new(bombs.size) {[]}

  bombs.each_with_index do |(coord_x1, coord_y1, radius1), index1|
    bombs[index1 + 1...].each_with_index do |(coord_x2, coord_y2, radius2), index2|
      index2 += index1 + 1
      distance_square = (coord_x1 - coord_x2) ** 2 + (coord_y1 - coord_y2) ** 2

      unless index1 == index2
        @connected[index1] << index2 if (distance_square <= (radius1 ** 2))
        @connected[index2] << index1 if (distance_square <= (radius2 ** 2))
      end
    end
  end

  @results = []
  0.upto(bombs.size - 1) do |index|
    @result = Set.new
    check(index)
    @results << @result
  end

  @results.max_by(&:size).size
end

def check index
  return if @result.include? index

  @result << index

  return @result.merge(@results[index]) if @results[index]
    
  @connected[index].each do |next_index|
    check(next_index)
  end
end