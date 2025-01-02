VOWELS = Set['a', 'e', 'i', 'o', 'u']

# @param {String[]} words
# @param {Integer[][]} queries
# @return {Integer[]}
def vowel_strings(words, queries)
  count = 0
  words = words.map.with_index do |word, _index|
    start_and_end_with_vowel = VOWELS.include?(word[0]) && VOWELS.include?(word[-1])
    count += 1 if start_and_end_with_vowel

    count
  end
  words.unshift(0)
  queries.map do |start_index, end_index| 
    words[end_index + 1] - words[start_index] 
  end
end
