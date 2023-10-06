# @param {Integer} n
# @return {Integer}
def integer_break(n)
  return n - 1 if n < 4

  result = 3 ** (n / 3)

  case n % 3
  when 0
    result * 1
  when 1
    result * 4 / 3
  when 2
    result * 2
  end
end