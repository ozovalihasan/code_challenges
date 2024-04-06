# @param {String} s
# @return {String}
def make_good(s)
  chars = []
  s.each_char.with_index do |char, index|
    if char != chars.last && (char.downcase == chars.last&.downcase)
      chars.pop
    else
      chars << char
    end
  end

  chars.join
end