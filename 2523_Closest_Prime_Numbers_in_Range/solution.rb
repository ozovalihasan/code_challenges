require 'prime'
# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def closest_primes(left, right)
  last_prime = -Float::INFINITY
  min_diff = Float::INFINITY

  result = [-1, -1]
  left.upto(right) do |num|
    next unless num.prime?

    last_diff = num - last_prime
    if last_diff < min_diff
      min_diff = last_diff 
      
      result = [last_prime, num]
      return result if min_diff <= 2
    end
    
    last_prime = num
  end

  result  
end
