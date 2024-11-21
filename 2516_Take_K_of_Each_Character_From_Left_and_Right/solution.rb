# @param {String} str
# @param {Integer} chr_count
# @return {Integer}
CHECKED_CHARACTERS = %w[a b c].freeze
def take_characters(str, chr_count)
  chars = str.chars
  char_counts = chars.tally
  char_counts.default = 0
  
  return -1 unless CHECKED_CHARACTERS.all? { |char| char_counts[char] >= chr_count } 

  left_index = -1
  right_index = -1
  max_gap = right_index - left_index

  until right_index == chars.size - 1
    right_index += 1
    right_char = chars[right_index]
    char_counts[right_char] -= 1

    until char_counts[right_char] >= chr_count
      left_index += 1
      left_char = chars[left_index]
      char_counts[left_char] += 1
    end

    max_gap = [max_gap, right_index - left_index].max
  end

  str.size - max_gap
end
