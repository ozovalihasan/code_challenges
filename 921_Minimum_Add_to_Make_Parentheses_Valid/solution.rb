# @param {String} str
# @return {Integer}
def min_add_to_make_valid(str)
  necessary_open = 0
  necessary_closed = 0
  
  str.each_char do |char|
    if char == '('
      necessary_closed += 1
    elsif necessary_closed.zero?
      necessary_open += 1
    else
      necessary_closed -= 1
    end
  end

  necessary_open + necessary_closed
end
