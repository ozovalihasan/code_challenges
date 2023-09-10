MODULO = (10 ** 9) + 7

# @param {Integer} n
# @return {Integer}
def count_orders(n)
  (2..n).inject(1) do |result, num| 
    result *= ((2 * num) - 1) * num
    result %= MODULO 
  end
end