# @param {Integer} num
# @return {Integer}
def add_digits(num)
  loop do
    digits = num.digits
    break if digits.size == 1
    num = digits.sum
  end
  
  num
end