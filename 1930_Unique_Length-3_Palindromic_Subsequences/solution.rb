# @param {String} s
# @return {Integer}
def count_palindromic_subsequence(str)
  indices = {}
  str = str.chars
  
  str.each_with_index do |char, index|
    indices[char] ||= [index, index]
    indices[char][-1] = index
  end

  indices.values.sum do |char_indices|
    next 0 if char_indices.first == char_indices.last
    
    str[char_indices.first + 1..char_indices.last - 1].uniq.size
  end
end
