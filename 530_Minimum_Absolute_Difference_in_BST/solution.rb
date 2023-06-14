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
def get_minimum_difference(root)
  @values = []
  check_node(root)
  
  @values.each_cons(2)
         .map {|first_val, second_val| (second_val - first_val).abs }
         .min
end

def check_node(node)
  return if node.nil?

  index = @values.bsearch_index {|val| val > node.val} || @values.size
  @values.insert(index, node.val)
  check_node(node.left)
  check_node(node.right)
end