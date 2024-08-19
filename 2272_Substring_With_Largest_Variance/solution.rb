# @param {String} s
# @return {Integer}
"I couldn't solve"
def largest_variance(s)
  @s = s
  s_counts = s.chars.tally.values
  @min_result = s_counts.max - s_counts.min
  s.size.downto 0 do |length|
    
    break if length <= (@min_result + 2)
    check_length(length)
  end

  @min_result
end

def check_length(length)
  chars_count = @s[...length].chars.tally
  chars_count.default = 0 
  
  return if calculate_result(chars_count, length)

  length.upto(@s.size - 1) do |index|
    chars_count[@s[index]] += 1
    chars_count[@s[index - length]] -= 1
    chars_count.delete(@s[index - length]) if chars_count[@s[index - length]].zero?
    
    return if calculate_result(chars_count, length)
  end
end

def calculate_result(chars_count, length)
  min, max = chars_count.values.minmax

  if @min_result < max - min
    @min_result = max - min
    
    return true if @min_result + 2 >= length

  end
  
  false
end