class ProductOfNumbers
  def initialize()
    @products = [1]
  end

  #   :type num: Integer
  #   :rtype: Void
  def add(num)
    return @products.clear << 1 if num.zero?
    
    @products << (num * @products.last)
  end

  #   :type k: Integer
  #   :rtype: Integer
  def get_product(k)
    return 0 if k >= @products.size
    
    @products.last / @products[-k - 1]
  end
end

# Your ProductOfNumbers object will be instantiated and called as such:
# obj = ProductOfNumbers.new()
# obj.add(num)
# param_2 = obj.get_product(k)
