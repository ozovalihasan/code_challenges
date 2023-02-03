# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1
  
  total_indices = (num_rows - 1) * 2
  result = Array.new(num_rows) { "" }
  
  s.each_char.with_index do |char, index|
    index %= total_indices
    index = total_indices - index if index >= num_rows
    result[index] << char
  end

  result.join
end