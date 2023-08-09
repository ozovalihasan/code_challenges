# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  result = s.clone
  indices.zip(s.chars).each {|index, char| result[index] = char}
  result
end