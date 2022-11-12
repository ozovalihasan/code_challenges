class MedianFinder
  def initialize()
    @arr = []
  end


=begin
  :type num: Integer
  :rtype: Void
=end
  def add_num(num)
    index = @arr.bsearch_index {|el| el > num } || @arr.size
    @arr.insert(index, num)
  end


=begin
  :rtype: Float
=end
  def find_median()
    half = @arr.size / 2
    if @arr.size.odd?
      return @arr[ half ].to_f
    else
      return @arr[ (half - 1)..half ].sum / 2.0
    end
  end


end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()