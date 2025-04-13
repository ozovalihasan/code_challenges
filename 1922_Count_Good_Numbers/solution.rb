# @param {Integer} num
# @return {Integer}
MODULO = 10**9 + 7
def count_good_numbers(num)
  remainder = num % 2
  
  result = 1
  num /= 2
  base = 20
  while num > 0 
    if num.odd?
      result = (result * base) % MODULO
    end
   
    base = (base * base) % MODULO
    num = num / 2
  end
  
  result *= 5 ** remainder
  result %= MODULO
end