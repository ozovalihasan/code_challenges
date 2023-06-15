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
def max_level_sum(root)
  max_level = 0
  max_sum = -Float::INFINITY

  current_nodes = [root]
  level = 1

  until current_nodes.empty?
    level_sum = current_nodes.sum(&:val)
    if level_sum > max_sum
      max_level = level
      max_sum = level_sum
    end
    level += 1
    current_nodes.pop(current_nodes.size).each {|node| current_nodes << node.left <<  node.right }
    current_nodes.compact!
  end

  max_level
end