# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  money = {
    5 => 0,
    10 => 0
  }

  
  bills.each do |bill|

    if bill == 5
      money[5] += 1 
    elsif bill == 10
      money[10] += 1 
      money[5] -= 1
      
      return false if money[5].negative?
      
    elsif bill == 20 

      if money[10].positive?
        money[10] -= 1 
        money[5] -= 1
      else
        money[5] -= 3 
      end
      
      return false if money[5].negative?
      
    end
    
  end
  true
end