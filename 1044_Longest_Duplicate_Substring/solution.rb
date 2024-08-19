# @param {String} s
# @return {String}

"I couldn't solve this challenge"

def longest_dup_substring(s)

  result = s.scan(/(.+).*\1/).max_by(&:length)&.first
  return "" if result.nil?

  hash = Hash.new(0)
  0.upto(s.size-2) do |index|
    hash[s[index] + s[index+1]] += 1
  end
  
  until s.size <= result.size 
    next s[0] = "" if hash[s[0..1]] < 2
    while (result2 = s[1..].match(s[..result.size]))
      result = result2[0]
    end
    s[0] = ""
  end

  result
end