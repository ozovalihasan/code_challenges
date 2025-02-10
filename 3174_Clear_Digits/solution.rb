# @param {String} str
# @return {String}
DIGITS = Set.new %w[0 1 2 3 4 5 6 7 8 9]
def clear_digits(str)
  chars_to_remove_count = 0
  result = ''
  str.reverse.each_char do |char|
    if DIGITS.include?(char) 
      chars_to_remove_count += 1
    elsif chars_to_remove_count.positive?
      chars_to_remove_count -= 1
    else
      result << char
    end
  end  

  result.reverse
end
