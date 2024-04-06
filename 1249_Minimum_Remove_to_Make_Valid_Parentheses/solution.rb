# @param {String} s
# @return {String}
def min_remove_to_make_valid(s)
  s = check_str(s.reverse, ")", "(")
  s = check_str(s.reverse, "(", ")")

  s.delete("-")
end

def check_str(str, increasing_char, decreasing_char)
  counter = 0
  str.each_char.with_index do |char, index|
    if char == increasing_char
      counter += 1
    elsif char == decreasing_char
      counter.zero? ? ( str[index] = "-" ) : ( counter -= 1 )
    end
  end
  
  str
end