# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
  return "0" if num.size <= k
  
  result = ["0"]
  num.each_char do |char|
    while k.positive? && char < result.last
      result.pop
      k -= 1
    end
    
    result << char
  end
  
  result.pop(k)
  result.join.to_i.to_s
end
