# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  return true if word.length == 1

  if word[0] == word[0].upcase
    word[0] = ''
    word == ( word[0] == word[0].upcase ? word.upcase : word.downcase )
  else
    word == word.downcase
  end
end
