# @param {String} s
# @return {Integer}
def count_binary_substrings(s)
  s.scan(/1+|0+/).map(&:size).each_cons(2).sum(&:min)
end