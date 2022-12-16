class MyQueue
  def initialize()
    @in = []
    @out = []
  end


=begin
  :type x: Integer
  :rtype: Void
=end
  def push(x)
    @in << x
  end


=begin
  :rtype: Integer
=end
  def pop()
    transform_items
    @out.pop
  end


=begin
  :rtype: Integer
=end
  def peek()
    transform_items
    @out.last
  end


=begin
  :rtype: Boolean
=end
  def empty()
    @in.empty? && @out.empty?
  end

  private

  def transform_items
    if @out.empty? 
      @out << (@in.pop) until @in.empty?
    end
  end
  
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()