# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  alphabet
    .chars
    .select {|char| s.count(char) == 1 }
    .map {|char| s.index char}
    .min || -1
  
  
end