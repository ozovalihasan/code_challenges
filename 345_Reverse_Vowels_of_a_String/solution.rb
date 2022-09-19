# @param {String} s
# @return {String}
def reverse_vowels(s)
  all_matches = s.scan(/[aeiou]/i)
  s.gsub (/([aeiou])/i) { all_matches.pop }
end