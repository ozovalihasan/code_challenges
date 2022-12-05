# @param {String} sentence
# @return {Boolean}
def is_circular_sentence(sentence)
  sentence = sentence << " " << sentence[0]

  sentence.each_char.with_index do |char, index|
    return false if char == " " && sentence[index - 1] != sentence[index + 1]
  end
  
  true
end