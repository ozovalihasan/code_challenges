# @param {String} str
# @param {Integer} chr_count
# @return {Integer}
CHECKED_CHARACTERS = %w[a b c].freeze
def take_characters(str, chr_count)
  chars = str.chars
  char_counts = chars.tally
  char_counts.default = 0
  
  return -1 unless CHECKED_CHARACTERS.all? { |char| char_counts[char] >= chr_count } 

  min_time = chars.count
  right_index = 0
  (chars.count - 1).downto(0) do |left_index|
    left_char = chars[left_index]
    char_counts[left_char] -= 1

    until char_counts[left_char] >= chr_count
      right_index -= 1
      right_char = chars[right_index]
      char_counts[right_char] += 1
    end

    min_time = [min_time, left_index - right_index].min
  end

  min_time
end
