# @param {String} str
# @param {Integer[][]} shifts
# @return {String}
CHARS = ('a'..'z').to_a.freeze
CHARS_INDICES = CHARS.zip(26.times).to_h.freeze
def shifting_letters(str, shifts)
  changes = Array.new(str.length + 1, 0)
  
  shifts.each do |start_index, end_index, step|
    changes[start_index] += (step * 2) - 1
    changes[end_index + 1] -= (step * 2) - 1
  end

  total_change = 0
  str.chars.map.with_index do |char, index|
    total_change += changes[index]
    char_index = CHARS_INDICES[char] + total_change
    CHARS[char_index % 26]
  end.join
end
