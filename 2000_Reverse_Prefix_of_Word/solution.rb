# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
  index = word.index(ch)
  word[..index] = word[..index].reverse if index
  word
end