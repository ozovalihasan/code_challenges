# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
  values = []
  node = head 
  while node
    values << node.val 
    node = node.next
  end

  to_bst(values, 0, values.size)
end

def to_bst(arr, start_index, end_index)
  return nil if start_index >= end_index
  
  middle_index = (start_index + end_index) / 2
  
  node = TreeNode.new(arr[middle_index])
  node.left = to_bst(arr, start_index, middle_index )
  node.right = to_bst(arr, middle_index + 1, end_index )
  
  node
end