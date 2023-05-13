# @param {Integer} low
# @param {Integer} high
# @param {Integer} zero
# @param {Integer} one
# @return {Integer}
MOD = (10**9 + 7)

def count_good_strings(low, high, zero, one)
  
  if zero == one
    low = (low - 1) / zero + 1  
    high = (high - 1) / zero + 1  
    return ((2 ** low ) * (2 ** (high - low + 1) - 1)) % MOD
  end
  
  @low, @high, @zero, @one = low, high, zero, one
  @cache = []

  check_by_starting(0) 
end

def check_by_starting(index)
  return @cache[index] if @cache[index]
  return @cache[index] = 0 if index > @high

  subresult = ( index < @low ? 0 : 1 )
  subresult += check_by_starting(index + @zero)
  subresult += check_by_starting(index + @one)
  
  @cache[index] = subresult % MOD
end