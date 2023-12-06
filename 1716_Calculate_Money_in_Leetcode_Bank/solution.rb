# @param {Integer} num
# @return {Integer}
def total_money(num)
  div = num / 7
  result = (28 * div) + (7 * ((div * (div - 1)) / 2))

  remainder = num % 7
  result += (remainder * (remainder + 1) / 2) + (div * remainder)
  result
end
