# @param {String[]} words
# @return {String}
def first_palindrome(words)
  words.find { |word| word == word.reverse} || ""
end
