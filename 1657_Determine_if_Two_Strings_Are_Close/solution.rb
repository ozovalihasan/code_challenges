# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
  word_count1 = word1.chars.tally
  word_count2 = word2.chars.tally

  return false unless word_count1.keys.tally == word_count2.keys.tally
  
  word_count1.values.tally == word_count2.values.tally
end
