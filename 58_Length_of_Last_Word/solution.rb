# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  s.rstrip!
  index = s.rindex(/ /)
  if index.nil?
    s.size
  else
    s.size - 1 - index
  end
end
