# @param {String} s
# @return {String}
def remove_stars(s)
  result = []

  s.each_char do |char|
    char == "*" ? result.pop : result << char
  end

  result.join
end