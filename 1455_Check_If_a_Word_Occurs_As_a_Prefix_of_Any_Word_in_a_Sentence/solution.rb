# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
  index = sentence.split.find_index { |word| word.start_with? search_word }
  index ? index + 1 : -1
end
