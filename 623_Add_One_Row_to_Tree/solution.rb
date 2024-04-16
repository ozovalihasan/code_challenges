# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} val
# @param {Integer} depth
# @return {TreeNode}
def add_one_row(root, val, depth)
  temp_node = TreeNode.new(0, root)
  @val = val
  @depth = depth
  check_node(temp_node, 1)
  temp_node.left
end

def check_node(node, checked_depth)
  return if node.nil?
  
  if checked_depth == @depth
    new_node_left = TreeNode.new(@val, node.left) 
    node.left = new_node_left

    new_node_right = TreeNode.new(@val, nil, node.right) 
    node.right = new_node_right
  else
    check_node(node.left, checked_depth + 1)
    check_node(node.right, checked_depth + 1)
  end

end