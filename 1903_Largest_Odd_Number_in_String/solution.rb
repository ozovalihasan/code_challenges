# @param {String} num
# @return {String}
def largest_odd_number(num)
  (num.size - 1).downto(0) do |index|
    if num[index].to_i.odd?
      return num[..index] 
    end
  end
  
  ""
end