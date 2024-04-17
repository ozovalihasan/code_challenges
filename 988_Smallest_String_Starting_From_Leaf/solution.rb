CHARS = ("a".."z").to_a

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
# @return {String}
def smallest_from_leaf(root)
  @min_word = ("z".ord + 1).chr
  check_node(root, "")
  @min_word
end

def check_node(node, word)
  word = CHARS[node.val] + word

  if node.left.nil? && node.right.nil?
    return @min_word = word if word < @min_word
  end

  check_node(node.left, word) if node.left
  check_node(node.right, word) if node.right
end