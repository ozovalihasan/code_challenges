# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  return 1 if n.zero?
  
  if n.negative?
    x = 1 / x
    n = -n
  end
  
  result = my_pow(x * x, n / 2)
  n.odd? ? result * x : result
end