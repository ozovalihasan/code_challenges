# @param {String} s
# @return {Integer}
def calculate(s)
  s = s.delete("\s")
  while match = s.match(/\(([\d\+\-]+)\)/)
    str = match[0]
    
    start_index, end_index = match.offset(1)
    subresult = calculate_inner( s[(start_index)...(end_index)] )
    if subresult.negative? && s[start_index - 2] == "-"
      s[(start_index - 2)..end_index] = "+" + (-1 * subresult).to_s
    else
      s[(start_index - 1)..end_index] = subresult.to_s
    end
  end
  calculate_inner(s)
end

def calculate_inner(str)
  
  str = str.scan(/\d+|[+-]+/) 
  result = str.shift
  
  if result == "-"
    result = -1 * str.shift.to_i
  elsif result == "+"
    result = str.shift.to_i
  else
    result = result.to_i
  end

  str.each_slice(2) do |operator, num|
    if operator == "+"
      result += num.to_i
    else
      result -= num.to_i
    end
  end
  
  result
end