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
def minimum_operations(root)
  @rows = []
  check_node(root, 0)
  @result = 0
  @rows.each do |row|
    calculate_operations(row)
  end
  @result
end

def check_node(node, level)
  return if node.nil?

  @rows[level] ||= []
  @rows[level] << node.val
  check_node(node.left, level + 1)
  check_node(node.right, level + 1)
end

def calculate_operations(arr)
  sorted = arr.sort
  return if sorted == arr

  index_map = arr.each.with_index.to_h

  arr.each_with_index do |num, index|
    correct_value = sorted[index]
    next if num == correct_value

    @result += 1
    swap_index = index_map[correct_value]

    index_map[arr[index]] = swap_index
    index_map[correct_value] = index
    arr[index], arr[swap_index] = arr[swap_index], arr[index]
  end
end
