# @param {String} str
# @param {String} locked
# @return {Boolean}
def can_be_valid(str, locked)
  return false if str.length.odd?

  min = 0
  max = 0
  str.chars.zip(locked.chars) do |char, locked_index|
    
    if locked_index == '1'
      if char == '('
        min += 1
        max += 1
      else
        min -= 1
        max -= 1
      end
    else
      max += 1
      min -= 1
    end

    min = 0 if min.negative?
    return false if max.negative?
  end
  return false if min.positive?
  
  true
end
