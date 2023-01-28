# @param {String[]} words
# @return {String[]}
def find_all_concatenated_words_in_a_dict(words)
  @words_hash = words.to_h {|word| [word, true]}

  words.each_with_object([]) do |word, result|
    result << word  if check_word(word, 0)
  end

end

def check_word(word, step)
  return step >= 2 if word == ''

  1.upto(word.size) do |index|
    return true if @words_hash[word[0...index]] && check_word(word[index...], step + 1)
  end

  false
end
