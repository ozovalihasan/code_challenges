class SmallestInfiniteSet
  def initialize()
    @popped = []
  end


=begin
  :rtype: Integer
=end
  def pop_smallest()
    item = ((1..(@popped.size + 1)).to_a - @popped).first
    @popped << item
    item
  end


=begin
  :type num: Integer
  :rtype: Void
=end
  def add_back(num)
    @popped.delete(num)
  end

end

# Your SmallestInfiniteSet object will be instantiated and called as such:
# obj = SmallestInfiniteSet.new()
# param_1 = obj.pop_smallest()
# obj.add_back(num)