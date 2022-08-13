# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  size_word = words.first.size
  total_size = words.size * size_word
  
  return [] if total_size > s.length

  hash = words.each_with_object(Hash.new(0)) {|word, hash| hash[word] += 1}

  result  = []
  
  size_word.times do |index|
    hash2 = s.slice(index, total_size - size_word).scan(/.{#{size_word}}/).each_with_object(Hash.new(0)) {|word, new_hash| new_hash[word] += 1 }
    
    while s[index + total_size - 1]

      check_word = s.slice(index - size_word + total_size, size_word)
      hash2[check_word] += 1

      result << index if hash == hash2
        
      delete_word = s.slice(index, size_word)
      hash2[delete_word] -= 1
      hash2.delete(delete_word) unless hash2[delete_word].positive?

      index += size_word

    end
  end
  result
end
