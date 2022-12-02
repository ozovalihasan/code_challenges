# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
  word1, word2 = word1.chars, word2.chars

  return false unless word1.uniq.sort.eql? word2.uniq.sort 
  
  word1.tally.values.sort.eql? word2.tally.values.sort
end
