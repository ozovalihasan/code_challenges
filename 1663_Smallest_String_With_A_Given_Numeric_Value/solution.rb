# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_smallest_string(n, k)
  result = 'a' * n
  k -= n
  quotient, reminder = k.divmod(25)
  
  result[-quotient..] = 'z' * quotient if quotient.positive?
  result[-quotient - 1] = (reminder + 97).chr if quotient < n
  result
end
