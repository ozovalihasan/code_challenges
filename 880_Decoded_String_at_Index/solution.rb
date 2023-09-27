# @param {String} s
# @param {Integer} k
# @return {String}
def decode_at_index(s, k)
  letter_counter = 0
  checked_parts = []
  s.scan(/[a-z]+|\d/) do |part|
    if part.match? /\d/
      part = part.to_i
      letter_counter *= part
    else
      letter_counter += part.size
    end
    
    checked_parts << part
    
    break if letter_counter >= k
  end

  checked_parts.reverse_each do |part|
    if part.is_a? String
      letter_counter -= part.size

      if k.between?(letter_counter + 1, letter_counter + part.size)
        return part[k - (letter_counter + 1)]
      end
    elsif part.is_a? Numeric
      letter_counter /= part
      k = (k - 1) % letter_counter + 1
    end
  end  
end