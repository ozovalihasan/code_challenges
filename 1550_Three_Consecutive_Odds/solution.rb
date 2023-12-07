# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
  result = 0
  arr.each do |num|
    num.odd? ? result += 1 : result = 0
    return true if result == 3
  end
  
  false
end
