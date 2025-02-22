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
    queue = [[self, 1]]

    until queue.empty?
      node = queue.shift
      next if node.first.nil?
      arr[node.last - 1] = node.first.val

      queue << [node.first.left, node.last * 2 ]
      queue << [node.first.right, node.last * 2 + 1  ]
    end
    arr
  end
  
end
