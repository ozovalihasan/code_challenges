# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  arr.sort!
  diff = arr[1] - arr[0]
  result = arr.shift
  
  arr.each do |num|
    result += diff
    
    return false unless num == result
  end
  true
end