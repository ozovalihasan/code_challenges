# @param {String} s
# @param {Character} letter
# @return {Integer}
def percentage_letter(s, letter)
  s.count( letter ) * 100 / s.length 
end