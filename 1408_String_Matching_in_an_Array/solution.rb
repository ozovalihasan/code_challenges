# @param {String[]} words
# @return {String[]}
def string_matching(words)
  res = []

  words.each do |word1|
    words.each do |word2|
      next unless word1 != word2 && word2.include?(word1)

      res << word1
      break
    end
  end

  res
end
