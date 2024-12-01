# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  counts = arr.tally
  
  arr.each do |num|
    if num.zero? 
      return true if counts[num] > 1
      
      next
    end

    return true if counts[num * 2]
  end

  false
end
