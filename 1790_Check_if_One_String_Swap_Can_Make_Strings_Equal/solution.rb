# @param {String} str1
# @param {String} str2
# @return {Boolean}
def are_almost_equal(str1, str2) 
  diff_chars = str1.chars.zip(str2.chars).reject { |char1, char2| char1 == char2 }
  diff_chars.empty? || (diff_chars.size == 2 && diff_chars[0] == diff_chars[1].reverse)
end
