# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s.each_byte.tally == t.each_byte.tally
end