# @param {Integer} n
# @return {Integer}
def fib(n)
  @hash ||= {0 => 0, 1 => 1}
  
  unless @hash[n]
    @hash[n] = fib(n - 1) + fib(n - 2)
  end

  @hash[n]
end