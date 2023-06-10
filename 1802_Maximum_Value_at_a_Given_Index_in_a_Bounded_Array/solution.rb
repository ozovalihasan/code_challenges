# @param {Integer} n
# @param {Integer} index
# @param {Integer} max_sum
# @return {Integer}
def max_value(n, index, max_sum)
  @nums_size = n
  
  index = @nums_size - index - 1 if index < n / 2
  @index = index
  
  sum = calculate_sum_for_max_val(index + 1)

  if sum < max_sum
    result = index + 1

    return result + (max_sum - sum).to_i / @nums_size
  else
    max_sum -= @nums_size
  
    (1..@nums_size).bsearch do |val|
      calculate_sum_for_max_val(val) > max_sum
    end 
  end
end

def calculate_sum_for_max_val( val )
  end_val = val - @nums_size + @index 
  end_val = 0 if end_val < 0

  (val ** 2 - (end_val * (end_val + 1)) / 2 ) 
end