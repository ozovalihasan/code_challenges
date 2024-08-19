# @param {String} s1
# @param {String} s2
# @return {Boolean}

# Time limit exceeded

def is_scramble(s1, s2)
  return false unless s1.chars.tally == s2.chars.tally 
  @cache = {}
  check_scramble(s1.chars, s2.chars)
end

def check_scramble(s1, s2)
  
  return @cache[[s1, s2]] if @cache[[s1, s2]]

  if (s1.size <= 3) || (s1 == s2)
    @cache[[s1, s2]] = true
    return true 
  end
  
  s1_count = Hash.new(0)
  s1_reverse_count = Hash.new(0)

  1.upto(s1.size - 1) do |checked_length|
    s1_count[s1[checked_length - 1]] += 1
    s1_count[s2[checked_length - 1]] -= 1
    s1_count.delete(s1[checked_length - 1]) if s1_count[s1[checked_length - 1]].zero?
    s1_count.delete(s2[checked_length - 1]) if s1_count[s2[checked_length - 1]].zero?

    if s1_count.empty? && check_scramble(s1[0...checked_length], s2[0...checked_length]) && check_scramble(s1[checked_length..], s2[checked_length..])
      @cache[[s1, s2]] = true
      return true 
    end

    s1_reverse_count[s1[checked_length-1]] += 1
    s1_reverse_count[s2[-checked_length]] -= 1
    s1_reverse_count.delete(s1[checked_length - 1]) if s1_reverse_count[s1[checked_length - 1]].zero?
    s1_reverse_count.delete(s2[-checked_length]) if s1_reverse_count[s2[-checked_length]].zero?
    
    if s1_reverse_count.empty? && check_scramble(s1[0...checked_length], s2[-checked_length..]) && check_scramble(s1[checked_length..], s2[...-checked_length])
      @cache[[s1, s2]] = true
      return true 
    end
  end
  @cache[[s1, s2]] = false
end