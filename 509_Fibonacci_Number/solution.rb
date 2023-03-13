# @param {Integer} n
# @return {Integer}
def fib(n)
  (@memo ||= {0 => 0, 1 => 1})
  
  @memo[n] = fib(n - 1) + fib(n - 2) unless @memo[n]
  
  @memo[n]
end