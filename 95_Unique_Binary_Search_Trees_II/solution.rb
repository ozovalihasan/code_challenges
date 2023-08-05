# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer} n
# @return {TreeNode[]}
def generate_trees(n)
  check_sub_trees(1, n)
end

def check_sub_trees(lower_limit, upper_limit)
  return [TreeNode.new(upper_limit)] if upper_limit == lower_limit
  return [nil] if upper_limit < lower_limit

  result = []
  
  lower_limit.upto(upper_limit) do |num| 
    left_trees = check_sub_trees(lower_limit, num - 1)
    right_trees = check_sub_trees(num + 1, upper_limit)

    left_trees.each do |left_tree|
      right_trees.each do |right_tree|
        result << TreeNode.new(num, left_tree, right_tree)
      end
    end
  end

  result
end