class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def to_a
    node = self
    arr = []
    until node.nil?
      arr << node.val
      node = node.next
    end
    arr
  end
end

class LinkedList
  attr_accessor :head

  def initialize(arr)
    return @head = nil if arr.empty?

    @head = ListNode.new(arr.first)
    node = @head

    arr[1..].each do |val|
      node.next = ListNode.new(val)
      node = node.next
    end
    @head
  end

  def to_a
    node = @head
    arr = []
    until node.nil?
      arr << node.val
      node = node.next
    end
    arr
  end
end
