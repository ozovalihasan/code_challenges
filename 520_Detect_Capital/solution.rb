# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  word == word.downcase || word == word.upcase || word == word.capitalize
end