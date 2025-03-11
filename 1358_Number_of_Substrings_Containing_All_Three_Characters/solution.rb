# @param {String} s
# @return {Integer}
def number_of_substrings(str)
  counts = Hash.new(0)
  counts_valid_chars = 0
  left_index = -1
  result = 0
  str_size = str.size

  str.each_char.with_index do |char, index|
    counts[char] += 1
    counts_valid_chars += 1 if counts[char] == 1
    
    while counts_valid_chars == 3
      result += str_size - index
      left_index += 1
      counts[str[left_index]] -= 1
      counts_valid_chars -= 1 if counts[str[left_index]].zero?
    end
  end
  
  result
end
