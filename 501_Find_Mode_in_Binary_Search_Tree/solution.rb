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
# @return {Integer[]}
def find_mode(root)
  @counts = Hash.new(0)
  check_node(root)
  max_count = @counts.values.max
  @counts.select { |_, val| val == max_count }.keys
end

def check_node(node)
  return if node.nil?
  
  @counts[node.val] += 1
  check_node(node.left)
  check_node(node.right)
end
