class KthLargest

=begin
  :type k: Integer
  :type nums: Integer[]
=end
  def initialize(k, nums)
    @k = -k
    @nums = nums.sort!
  end


=begin
  :type val: Integer
  :rtype: Integer
=end
  def add(val)
    index = @nums.bsearch_index {|num| num > val}
    index ? @nums.insert(index, val) : ( @nums << val )
    
    @nums[ @k ]
  end


end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)