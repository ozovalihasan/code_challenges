# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
  postorder_reverse = postorder.reverse

  build_subtrees(inorder, postorder_reverse)
end

def build_subtrees(inorder, postorder_reverse)
  return nil if inorder.empty?

  root_val = postorder_reverse.find {|num| inorder.include? num}
  postorder_reverse.delete(root_val)

  node = TreeNode.new(root_val)
  index = inorder.index(root_val)
  node.left = build_subtrees(inorder[...index], postorder_reverse)
  node.right = build_subtrees(inorder[(index + 1) ...], postorder_reverse)
  node
end