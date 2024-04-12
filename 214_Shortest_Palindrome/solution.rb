# @param {String} s
# @return {String}
def shortest_palindrome(s)
  s_original = s.clone
  s_reverse = s.clone.reverse
  s.size.times do
    break if s == s_reverse
    
    s[-1] = ""
    s_reverse[0] = ""
  end

  s_original[s.size..].reverse + s_original
end