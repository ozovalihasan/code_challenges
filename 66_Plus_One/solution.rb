# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  digits.reverse_each.with_index do |digit, index|
    if digit == 9
      digits[ - index - 1 ] = 0
    else
      digits[ - index - 1 ] += 1 
      return digits
    end

  end
  digits.unshift 1
  
end