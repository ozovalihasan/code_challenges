# @param {String} str
# @return {Integer}
def max_length_between_equal_characters(str)
  indices = {}
  
  str.each_char.with_index { |char, index| (indices[char] ||= []) << index }

  indices.values.map { |char_indices| char_indices.last - char_indices.first }.max - 1
end
