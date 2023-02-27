class Node
  attr_accessor :val, :isLeaf, :topLeft, :topRight, :bottomLeft, :bottomRight
  def initialize(val=false, isLeaf=false, topLeft=nil, topRight=nil, bottomLeft=nil, bottomRight=nil)
      @val = val
      @isLeaf = isLeaf
      @topLeft = topLeft
      @topRight = topRight
      @bottomLeft = bottomLeft
      @bottomRight = bottomRight
  end

  def to_a

    queue = [self]
    result = []
    until queue.all? nil
      current = queue.pop
      if current
        result.concat current.transform_to_binary
        queue.unshift(current.topLeft)
        queue.unshift(current.topRight)
        queue.unshift(current.bottomLeft)
        queue.unshift(current.bottomRight)
      else
        result.concat([nil])
      end
    end
    result
  end

  def transform_to_binary
    [[@isLeaf ? 1 : 0, @val ? 1 : 0]]
    
  end
end