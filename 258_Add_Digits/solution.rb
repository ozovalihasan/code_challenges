# @param {Integer} num
# @return {Integer}
def add_digits(num)
  result = num % 9
  return 9 if result.zero? && num >= 9
  
  result
end