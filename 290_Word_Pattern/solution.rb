# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  pattern = pattern.chars
  s = s.split

  s.size == pattern.size && s.uniq.size == pattern.uniq.size && s.zip(pattern).uniq.size == s.uniq.size
end
