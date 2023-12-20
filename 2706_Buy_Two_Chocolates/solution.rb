# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
def buy_choco(prices, money)
  total = prices.min(2).sum
  return money if total > money

  money - total
end
