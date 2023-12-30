# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  words.join.chars.tally.all? {|_key, count| (count % words.size) == 0}
end
