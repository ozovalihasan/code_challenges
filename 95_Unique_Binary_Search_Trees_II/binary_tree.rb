# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def to_a
    node = self
    arr = []
    queue = [self]

    until queue.empty?
      node = queue.shift
      
      if node.nil?
        arr << node
        next
      else
        arr << node.val
      end

      queue << node.left
      queue << node.right
    end

    while arr.last.nil?
      arr.pop
    end

    arr
  end
  
end