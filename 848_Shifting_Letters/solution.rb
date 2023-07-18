# @param {String} s
# @param {Integer[]} shifts
# @return {String}
def shifting_letters(s, shifts)
  letters = ("a".."z").to_a

  s = s.chars.map {|letter| letter.ord - 97}

  sum = 0
  shifts = shifts.reverse.map {|shift| sum += shift }.reverse
  
  s.zip(shifts).map {|index_with_shift| letters[index_with_shift.sum % 26] }.join
end