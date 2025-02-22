# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def to_a
    result = []
    queue = [self]
    
    until queue.empty?
      node = queue.shift
      if node.nil?
        result << nil
      else
        result << node.val
        if node.left || node.right
          queue << node.left
          queue << node.right
        end
      end
    end
    
    # Remove trailing nils
    while result.last.nil?
      result.pop
    end
    
    result
  end
  
end
