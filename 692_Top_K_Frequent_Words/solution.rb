# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
  words.tally.min_by(k) {|word, count| [-count, word]}.map(&:first)
end