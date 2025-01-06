# @param {String} boxes
# @return {Integer[]}
def min_operations(boxes)
  left_count = 0
  left_sum = 0

  right_count = 0
  right_sum = 0
  
  boxes = boxes.chars
  boxes.each.with_index do |char, index|
    if char == '1'
      right_count += 1
      right_sum += index
    end
  end

  boxes.each.map.with_index do |char, index|
    if char == '1'
      right_count -= 1
      right_sum -= index

      left_count += 1
      left_sum += index
    end

    right_sum - (right_count * index) + (left_count * index) - left_sum
  end
end
