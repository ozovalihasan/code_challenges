# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  char_counts = count(chars)
  char_counts.default = 0

  words
    .select { |word| good_word?(word, char_counts) }
    .sum(&:size)
end

def good_word?(word, char_counts)
  count(word).all? { |char, count| char_counts[char] >= count }
end

def count(word)
  word.chars.tally
end
