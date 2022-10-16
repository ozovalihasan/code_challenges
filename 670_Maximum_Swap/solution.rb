# @param {Integer} num
# @return {Integer}
def maximum_swap(num)
  num_digits = num.digits.reverse

  return num_digits.join.to_i if num_digits.each_cons(2).all? {|first, second| first >= second }
  
  sorted_digits = num_digits.sort

  index = num_digits.index { |digit| digit != sorted_digits.pop }
  index_max_value = num_digits.rindex( num_digits[(index + 1)...].max )
  num_digits[index], num_digits[index_max_value] = num_digits[index_max_value], num_digits[index]

  num_digits.join.to_i
end