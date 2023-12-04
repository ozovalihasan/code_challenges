# @param {String} num
# @return {String}
def largest_good_integer(num)
  result = 0.upto(num.size - 3).filter_map do |index|
    num[index...index + 3] if (num[index] == num[index + 1]) && (num[index] == num[index + 2])
  end
  
  result.max || ''
end
