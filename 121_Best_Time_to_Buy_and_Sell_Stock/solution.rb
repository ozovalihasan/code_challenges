# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min_price_so_far = prices.shift
  profit = 0

  prices.each do |price|
    profit = price - min_price_so_far if price - min_price_so_far > profit
    min_price_so_far = price if price < min_price_so_far 
  end

  profit
end