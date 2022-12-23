# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  product = Product.new
  prices.each do |price|
    product.update(price)
  end
  product.profit
end

class Product
  attr_accessor :buy, :sell, :cooldown
  
  def initialize
    @buy = - Float::INFINITY
    @sell = 0
    @cooldown = 0
  end

  def update(price)
    self.buy, self.sell, self.cooldown = [ [cooldown - price, buy].max, buy + price, [ sell, cooldown].max ]
  end

  def profit
    [sell, cooldown].max
  end
  
end