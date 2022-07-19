# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

end

class Tree

  attr_accessor :root
  def initialize(arr)
    @root = TreeNode.new arr.first
    add_node(@root, arr, 0)
  end

  def add_node(node, arr, index)
    left_index = index * 2 + 1
    node.left = TreeNode.new(arr[left_index])
    add_node(node.left, arr, left_index) if node.left.val

    right_index = index * 2 + 2
    node.right = TreeNode.new(arr[right_index])
    add_node(node.right, arr, right_index) if node.right.val
  end

end