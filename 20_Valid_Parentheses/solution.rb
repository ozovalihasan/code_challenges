# @param {String} s
# @return {Boolean}
PAIRS = {
  "}" => "{",
  ")" => "(",
  "]" => "["
}

def is_valid(s)
  return false unless s.count(PAIRS.keys.join) == s.count(PAIRS.values.join)
  
  stack = []
  
  s.split("").each do |char|
    if not PAIRS[char]
      stack << char
    elsif PAIRS[char] == stack.last
      stack.pop
    else
      return false
    end
  end

  stack.empty?
end