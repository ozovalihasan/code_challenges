# @param {String[]} words1
# @param {String[]} words2
# @return {String[]}
def word_subsets(words1, words2)

  hash2 = {}
  hash2.default = 0
  words2.each do |word2|
    word2.chars.uniq.each do |letter|
      hash2[letter] = word2.count(letter) if word2.count(letter) > hash2[letter] 
      
    end
  end
  
  words1.select do |word|
    hash2.all? do |key2, value2| 
      word.count(key2) >= value2
    end
  end
end