# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  words.sort_by {|word| word.tr(order, "a-z") } == words
end