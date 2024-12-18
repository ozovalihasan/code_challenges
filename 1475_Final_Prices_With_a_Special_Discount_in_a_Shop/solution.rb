# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  discounts = [0]
  
  prices.reverse.map do |price|
    discounts.pop while discounts.last > price
    
    discounts << price
    price - discounts[-2]
  end.reverse
end
