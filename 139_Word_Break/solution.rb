# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  @char_words_pairs = word_dict.group_by {|word| word[0]}
  @char_words_pairs.values {|words| words.sort_by!(&:length).reverse! }
  @char_words_pairs.default = []

  @checked = {}
  check(s)
end

def check(str, index = 0)
  return false if @checked[index]
  @checked[index] = true

  return true unless str[index]
  @char_words_pairs[str[index]].each do |word|
    if str.slice(index, word.length) == word 
      return true if check(str, index + word.length)
    end
  end

  false
end