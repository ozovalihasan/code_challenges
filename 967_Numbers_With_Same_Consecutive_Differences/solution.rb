# @param {Integer} n
# @param {Integer} k
# @return {Integer[]}
def nums_same_consec_diff(n, k)
  result = []
  1.upto(9) do |number|
    update_digits([number], n-1, k, result)
  end  
  result
end

def update_digits(digits, digits_size, difference, result)
  
  if digits_size.zero?
    result << digits.join.to_i
    return
  end
  
  digits_size -= 1
  
  if digits.last >= difference
    update_digits(digits << (digits.last - difference), digits_size, difference, result)
    digits.pop
  end

  if digits.last + difference < 10 && difference.nonzero?
    update_digits(digits << (digits.last + difference), digits_size, difference, result)
    digits.pop
  end

end