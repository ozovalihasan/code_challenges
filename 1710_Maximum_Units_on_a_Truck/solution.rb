# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  box_types.sort_by! { |_number_of_boxes, units| units }.reverse!

  @result = 0
  box_types.sum do |number_of_boxes, units|
    if truck_size >= number_of_boxes
      truck_size -= number_of_boxes
      
      @result += number_of_boxes * units
    else
      @result += truck_size * units
      break 
    end
  end

  @result
end
