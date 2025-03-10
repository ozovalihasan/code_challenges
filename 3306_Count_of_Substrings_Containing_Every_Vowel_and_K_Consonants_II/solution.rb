# @param {String} word
# @param {Integer} k
# @return {Integer}
VOWELS = %w[a e i o u].to_set.freeze
def count_of_substrings(word, k)
  left_index = 0
  left_char = word[left_index]
  most_left_index = 0
  counts = {}
  result = 0
  consonants_count = 0
  vowels_count = 0
  VOWELS.each { |char| counts[char] = 0 }

  0.upto(word.size - 1) do |index|
    char = word[index]
    if counts[char]
      counts[char] += 1
      vowels_count += 1 if counts[char] == 1
    else
      consonants_count += 1
    end
    
    while consonants_count > k
      if counts[left_char] 
        counts[left_char] -= 1
        vowels_count -= 1 if counts[left_char].zero?
      else
        consonants_count -= 1
      end

      left_index += 1
      left_char = word[left_index]
      most_left_index = left_index if consonants_count == k

      break if consonants_count == k
    end

    while counts[left_char] && counts[left_char] > 1
      counts[left_char] -= 1
      vowels_count -= 1 if counts[left_char].zero?
      
      left_index += 1
      left_char = word[left_index]
    end

    result += left_index - most_left_index + 1 if consonants_count == k && vowels_count == 5
  end

  result
end
