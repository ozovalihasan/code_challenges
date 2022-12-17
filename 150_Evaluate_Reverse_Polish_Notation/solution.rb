# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []

  while item = tokens.shift
    unless ["+", "-", "*", "/"].include? item
      stack << item.to_i
      next 
    end
      
    num1, num2 = stack.pop(2)  

    if item == "/"
      stack << (num1.to_f / num2.to_f).to_i 
    elsif item == "+"
      stack << (num1 + num2)
    elsif item == "-"
      stack << (num1 - num2)
    elsif item == "*"
      stack << (num1 * num2)
    end
    
  end

  stack.last
end