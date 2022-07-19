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

################
# Solution 1
################
def min_depth(root)
  return 0 if root.nil?
  @depth = Float::INFINITY
  check_nodes(root, 1)
  @depth
end

def check_nodes(node, count)
  return if node.nil?
  
  if node.left.nil? && node.right.nil? 
    @depth = count if count < @depth
  end
  check_nodes(node.left, count + 1)
  check_nodes(node.right, count + 1)
  
end

################
# Solution 2
################
# def min_depth(root)
#   return 0 if root.nil?
#   nodes = [root]
#   count = 1
#   while true
#     new_nodes = []
#     nodes.each do |node|
#       if node.left.nil? && node.right.nil?
#         return count
#       end
#       new_nodes << node.left
#       new_nodes << node.right
#     end
#     nodes = new_nodes.compact
#     count +=1
#   end
# end
