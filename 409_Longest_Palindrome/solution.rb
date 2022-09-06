# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  [
    s.size - (s.chars.tally.values.count(&:odd?) - 1), 
    s.size
  ].min
end