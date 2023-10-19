# @param {String} str1
# @param {String} str2
# @return {Boolean}
def backspace_compare(str1, str2)
  delete_chars_if_necessary(str1) == delete_chars_if_necessary(str2)
end

def delete_chars_if_necessary(str)
  result = ''

  str.each_char do |char|
    if char == '#'
      result[-1] = '' unless result.empty?
    else
      result << char
    end
  end

  result
end
