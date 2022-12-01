# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  count_vowels( s.slice!(0, s.size / 2) ) == count_vowels( s )
end

VOWELS = /[aeiou]/i
def count_vowels(str)
  str.scan(VOWELS).size 
end