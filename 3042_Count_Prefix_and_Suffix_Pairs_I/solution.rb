# @param {String[]} words
# @return {Integer}
def count_prefix_suffix_pairs(words) 
  pairs = {}
  count = 0
  
  words.each do |word|
    pair_words = (pairs[word[0]] ||= []) 
    
    pair_words.each do |word2|
      count += 1 if word.start_with?(word2) && word.end_with?(word2)
    end
    
    pair_words << word
  end

  count
end
