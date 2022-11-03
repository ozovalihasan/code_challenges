# @param {String[]} words
# @return {Integer}
def longest_palindrome(words)
  hash = Hash.new(0)
  total_length = 0

  words.each  do |word| 
    if hash[word] > 0 
      total_length += 4
      hash[word] -= 1
    else
      hash[word.reverse] += 1
    end
  end

  total_length += 2 if hash.reject {|_, val| val.zero? }.keys.any? {|word| word[0] == word[1]}
  
  total_length
end