# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  word[1..] == word[1..].downcase || word == word.upcase
end