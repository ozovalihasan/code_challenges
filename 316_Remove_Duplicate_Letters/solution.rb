# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  str = s.split("")
  counts = str.tally
  result = []
  added = Set.new

  str.each do |char|
    while result.any? && counts[result.last].positive? && !(added.include? char) && result.last >= char
      popped_char = result.pop
      added.delete(popped_char)
    end
    
    counts[char] -= 1

    unless added.include? char
      result << char 
      added << char
    end
  end

  result.join
end