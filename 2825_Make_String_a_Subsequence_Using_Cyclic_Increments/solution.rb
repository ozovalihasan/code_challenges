# @param {String} str1
# @param {String} str2
# @return {Boolean}
NEXT_CHARS = ('a'..'z').zip(('a'..'z').to_a.rotate).to_h
def can_make_subsequence(str1, str2)
  index = 0
  target_index = str2.size

  str1.each_char do |char|
    index += 1 if (char == str2[index]) || (NEXT_CHARS[char] == str2[index])

    return true if target_index == index
  end

  false
end
