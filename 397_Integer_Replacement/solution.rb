# @param {Integer} n
# @return {Integer}
def integer_replacement(n)
  @cache = {1 => 0}  
  find_number(n)
end

def find_number(n)
  return @cache[n] if @cache[n]
    
  if n.even?
    @cache[n] = find_number(n / 2) + 1
  else
    @cache[n] = [
      find_number(n + 1),
      find_number(n - 1)
    ].min + 1
  end
end