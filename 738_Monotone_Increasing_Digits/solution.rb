# @param {Integer} num
# @return {Integer}
def monotone_increasing_digits(num)
  change_needs_index = nil
  num.digits.reverse.each_cons(2).with_index do |(first, second), index|
    break change_needs_index = index if first > second
  end

  return num if change_needs_index.nil?

  selected_num = num.to_s[..change_needs_index].to_i.digits
  result_index = nil
  selected_num.each_cons(2).with_index do |(first, second), index|
    break result_index = selected_num.size - index - 1 if (first - 1) >= second
  end
  result_index = 0 if result_index.nil?
  
  num = num.to_s
  result = num[...result_index] + 
            (num[result_index].to_i - 1).to_s + 
            ('9' * (num.size - result_index - 1))
            
  result.to_i  
end
