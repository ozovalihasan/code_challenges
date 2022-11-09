class StockSpanner
  def initialize()
    @current_index = -1
    @sorted = []
  end


=begin
  :type price: Integer
  :rtype: Integer
=end
  def next(current_price)
    @current_index += 1

    index_of_higher_price = @sorted.bsearch_index {|pair| pair.first > current_price} || @sorted.size
    @sorted[...index_of_higher_price] = [[current_price, @current_index]]

    @current_index - ( @sorted[1]&.last || -1 )
  end

end

# Your StockSpanner object will be instantiated and called as such:
# obj = StockSpanner.new()
# param_1 = obj.next(price)