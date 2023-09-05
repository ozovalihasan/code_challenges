class Node
  attr_accessor :val, :next, :random

  def initialize(val = 0, _next = nil, random = nil)
    @val = val
    @next = _next
    @random = random
  end

  def extract_nodes
    nodes = []
    node = self
    while node
      nodes << node
      node = node.next
    end
    
    nodes
  end

  def to_a
    nodes = self.extract_nodes
    node = self
    arr = []
    until node.nil?
      random_index = nodes.index(node.random)
      arr << [node.val, random_index]
      node = node.next
    end
    arr
  end

end

class LinkedList
  attr_accessor :head

  def initialize(arr)
    return @head = nil if arr.empty?

    @head = Node.new(arr.first.first)
    node = @head
    nodes = [] << node 
    arr[1..].each do |val, _|
      node.next = Node.new(val)
      node = node.next
      nodes << node 
    end

    nodes.zip(arr).each do |node, (val, random_node_index)|
      if random_node_index
        node.random = nodes[random_node_index]
      end
    end

    @head
  end

  
end
