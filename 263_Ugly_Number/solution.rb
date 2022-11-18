# @param {Integer} n
# @return {Boolean}

def is_ugly(n)
  return false if n.zero?

  [2, 3, 5].each do |num|
    while (n % num).zero?    
      n /= num
    end  
  end
  
  n == 1
end