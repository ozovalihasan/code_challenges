# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
  chars = word1.chars.tally
  chars.default = 0
  word2.each_char { |char| chars[char] -= 1 }

  chars.values.all? { |count| count.between?(-3, 3) }
end
