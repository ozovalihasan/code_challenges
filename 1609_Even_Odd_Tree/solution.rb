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
# @return {Boolean}
def is_even_odd_tree(root)
  @levels = []
  check_node(root, 0)
end

def check_node(node, level)
  return true if node.nil?

  if level.odd?  
    return false if node.val.odd?
  else
    return false if node.val.even?
  end

  if @levels[level]
    if level.odd?
      return false unless @levels[level].last > node.val
    else
      return false unless @levels[level].last < node.val
    end
  else
    @levels[level] = []
  end

  @levels[level] << node.val

  return false unless check_node(node.left, level + 1)
  return false unless check_node(node.right, level + 1)

  true
end