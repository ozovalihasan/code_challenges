class MyQueue
  def initialize()
    @arr = []
  end


=begin
  :type x: Integer
  :rtype: Void
=end
  def push(x)
    @arr << x
  end


=begin
  :rtype: Integer
=end
  def pop()
    @arr.shift
  end


=begin
  :rtype: Integer
=end
  def peek()
    @arr.first
  end


=begin
  :rtype: Boolean
=end
  def empty()
    @arr.empty?
  end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()