# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  index_s = s.size - 1
  index_t = t.size - 1
  
  until index_t.negative? || index_s.negative?
    index_s -= 1 if t[index_t] == s[index_s]
    index_t -= 1
  end
  
  index_s.negative?
end