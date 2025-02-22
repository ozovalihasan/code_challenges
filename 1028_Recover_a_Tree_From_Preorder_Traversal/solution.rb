# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {String} traversal
# @return {TreeNode}
def recover_from_preorder(traversal)
  nodes = traversal.scan(/-*\d+/).map {|match| [match.count("-"), match.match(/\d+/).to_s.to_i]}

  root = TreeNode.new(nodes.shift.last)
  levels = {0 => root}
  nodes.each do |level, node_val|
    if levels[level - 1].left
      levels[level - 1].right = TreeNode.new(node_val)
      levels[level] = levels[level - 1].right
    else
      levels[level - 1].left = TreeNode.new(node_val)
      levels[level] = levels[level - 1].left
    end
  end
  root
end