# @param {Integer} num
# @param {Integer} arr_size
# @return {Integer}
def min_end(arr_size, num)
  str = num.to_s(2)
  added_num = (arr_size - 1).to_s(2).chars
    
  updated_num = str.reverse.chars.map do |char|  
    if added_num.any? && char == '0'
      added_num.pop
    else
      char
    end
  end 
  result = added_num + updated_num.reverse
  result.join.to_i(2)
end
