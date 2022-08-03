# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  t.chars.uniq.reverse.each do |char|
    return char if t.count(char) != s.count(char)
  end
end