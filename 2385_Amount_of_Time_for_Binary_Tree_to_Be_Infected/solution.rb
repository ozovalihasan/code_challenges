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
# @param {Integer} start
# @return {Integer}
def amount_of_time(root, start)
  @start_val = start
  @max = 0
  check_node(root)
  @max
end

def check_node(node)
  return [0, false] if node.nil? 

  left_count, left_infected = check_node(node.left)
  right_count, right_infected = check_node(node.right)
  
  @max = [@max, left_count + right_count + 1].max if left_infected || right_infected

  if left_infected
    [left_count + 1, true]
  elsif right_infected
    [right_count + 1, true]
  elsif node.val == @start_val
    @max = [left_count, right_count].max
    [0, true]
  else
    [[left_count, right_count].max + 1, false]
  end
end
