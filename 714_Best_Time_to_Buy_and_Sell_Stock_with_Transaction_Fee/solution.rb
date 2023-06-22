# @param {Integer[]} prices
# @param {Integer} fee
# @return {Integer}
def max_profit(prices, fee)
  bought = - Float::INFINITY
  sold = 0

  prices.each do |price|
    bought, sold = [sold - price - fee, bought].max, [bought + price, sold].max
  end

  sold
end