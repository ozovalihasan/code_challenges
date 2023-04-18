# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  word1 = word1.chars
  word2 = word2.chars
  word1[word2.size - 1] = nil if word1.size < word2.size
  
  word1.zip(word2).flatten.compact.join
end