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
# @return {Integer}
def longest_zig_zag(root)
  @max_count = 0
  check(root, 0)
  @max_count
end

def check(node, count, previous_side = nil)
  return if node.nil?

  @max_count = count if count > @max_count
  check(node.left, (previous_side != :left ? count + 1 : 1), :left)
  check(node.right, (previous_side != :right ? count + 1 : 1), :right)
end