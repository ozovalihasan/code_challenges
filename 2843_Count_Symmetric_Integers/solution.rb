# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_symmetric_integers(low, high)
  high = 9999 if high == 10000
  count_symmetric_integers_until(high) - count_symmetric_integers_until(low - 1)
end

def count_symmetric_integers_until(num)
  if num < 10
    return 0
  end  
  
  num = num.to_s

  count = 0
  if num.to_i > 99
    count += 9  
  else
    count = num[0].to_i
    count -= 1 if num[1].to_i < num[0].to_i
    return count
  end

  if num.to_i.between?(100, 999)
    return count
  end
 
  10.upto(num[0..1].to_i - 1) do |partial_num|
    sum = partial_num.digits.sum
    if sum.between?(1, 9)
      count += sum + 1
    else
      count += 9 - (sum - 9) + 1
    end
  end

  last_check_sum = num[0..1].to_i.digits.sum
  if last_check_sum.between?(1, 9)
    count += [last_check_sum, num[2].to_i].min + 1
  else
    count += [num[2].to_i - (last_check_sum - 9), 0].max + 1
  end

  if num[2..3].to_i.digits.sum < last_check_sum
    count -= 1
  end
  
  count
end