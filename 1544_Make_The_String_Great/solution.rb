# @param {String} s
# @return {String}
def make_good(s)
  index = 0
  s = s.chars
  
  while s[index + 1]
    if (s[index] != s[index + 1]) && s[index].downcase == s[index + 1].downcase
      s.slice!(index, 2)
      index -= 1 if index.positive?
    else
      index += 1
    end
  end
  
  s.join
end