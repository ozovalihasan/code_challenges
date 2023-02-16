# @param {String} s
# @param {String[]} words
# @return {Integer}
def expressive_words(s, words)
  s = s.chars.chunk(&:itself).to_a

  @result = 0

  words.each do |word|
    word = word.chars.chunk(&:itself).to_a
    compare(s, word)
  end

  @result
end

def compare(s, word)
  return unless s.size == word.size

  s.zip(word).each do |(s_char, s_char_arr), (char, char_arr)|
    return unless s_char == char && s_char_arr.size >= char_arr.size
    return if (s_char_arr.size == 2) && (char_arr.size == 1)
  end

  @result += 1
end