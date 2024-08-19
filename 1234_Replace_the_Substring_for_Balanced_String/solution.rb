# @param {String} str
# @return {Integer}
def balanced_string(str)
  necessary_count = str.size / 4
  necessary_chars = Hash.new
  str.chars.tally.each do |char, freq| 
    if freq > necessary_count 
      necessary_chars[char] = freq - necessary_count 
    end
  end

  end_index = nil
  str.each_char.with_index do |char, index|
    if necessary_chars[char] && necessary_chars[char] > 0
      necessary_chars[char] -= 1
      if necessary_chars.values.none?(&:positive?)
        end_index = index 
        break
      end
    end
  end

  p end_index
end