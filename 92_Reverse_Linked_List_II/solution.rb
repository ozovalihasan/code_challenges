# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
  return head if left == right

  temp_head = ListNode.new(nil, head)
  
  cursor = temp_head
  (left - 1).times { cursor = cursor.next }
  
  before_start_node = cursor
  cursor = cursor.next  
  start_node = cursor
  
  previous_node = nil
  (right - left).times { cursor.next, cursor, previous_node = previous_node, cursor.next, cursor }
  
  start_node.next = cursor.next
  before_start_node.next = cursor
  cursor.next = previous_node
  
  temp_head.next
end
