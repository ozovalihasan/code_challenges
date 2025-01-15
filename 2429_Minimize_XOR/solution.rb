# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def minimize_xor(num1, num2)
  num1 = num1.to_s(2)
  num2 = num2.to_s(2)

  count1 = num1.count('1')
  count2 = num2.count('1')

  result = if count1 >= count2
             (count1 - count2).times do
               index = num1.rindex('1')
               num1[index] = '0'
             end
    
             num1
           elsif num1.length <= count2
             '1' * count2
           else
             (count2 - count1).times do 
               index = num1.rindex('0')
               num1[index] = '1'
             end
    
             num1
           end

  result.to_i(2)
end
