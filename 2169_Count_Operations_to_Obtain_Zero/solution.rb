# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def count_operations(num1, num2)
  count = 0
  
  until (num1 * num2).zero? 
    if num1 > num2
      count += num1 / num2
      num1 %= num2
    else
      count += num2 / num1
      num2 %= num1
    end
  end

  count
end