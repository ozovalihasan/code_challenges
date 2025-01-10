# @param {String[]} words1
# @param {String[]} words2
# @return {String[]}
def word_subsets(words1, words2)
  counts = {}
  counts.default = 0
  words2.each do |word2|
    word2.chars.tally.each do |letter, count|
      counts[letter] = count if count > counts[letter] 
      
    end
  end
  
  words1.select do |word|
    counts.all? do |key2, value2| 
      word.count(key2) >= value2
    end
  end
end
