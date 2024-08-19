# @param {String} s
# @return {Integer}

"I have solved the challenge, but it is necessary to update it"

def calculate(s)
  s = s.delete("\s")
  s = "0" + s if s[0] == "-"
  s = "0+" + s if s[0] == "("
  s.gsub!("((", "(0+(")
  s.gsub!("(-", "(0-")
  
  stack = []
  current = ""

  s.each_char do |char|
    if char == "("
      stack << current
      current = ""
    elsif char == ")"
      stack_popped = stack.pop
      current = calculate_inner(current) * (stack_popped[-1] + "1").to_i
      current = "+" + current.to_s if current >= 0
      
      current = stack_popped[..-2] + current.to_s
    else
      current << char
    end
    
  end
  
  calculate_inner(current)
end

def calculate_inner(str)
  
  result = str.match(/\d+/).to_s.to_i
  str.scan(/[+-]\d+/) { result += Regexp.last_match.to_s.to_i}
    
  result
end