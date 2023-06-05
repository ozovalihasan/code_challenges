# @param {String[]} words
# @return {String}
def longest_word(words)
  found_words = {"" => true}
  words.sort!.each do |word|
    found_words[word] = true if found_words[word[...-1]]
  end

  found_words.keys.max_by(&:length)
end