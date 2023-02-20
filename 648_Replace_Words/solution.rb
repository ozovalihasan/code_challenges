# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  dictionary = dictionary.group_by {|word| word[0]}.transform_values(&:sort!)
  dictionary.default = []

  words = sentence.split(" ")
  words.map! {|word| update_word(word, dictionary) }.join(" ")
end

def update_word(word, dictionary)
  dictionary[ word[0] ].each do |root|
    return root if word.start_with? root
  end

  word
end