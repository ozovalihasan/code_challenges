# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  head = ListNode.new(0, head)
  cursor = head

  while cursor.next&.next
    cursor, cursor.next, cursor.next.next, cursor.next.next.next = cursor.next, cursor.next.next, cursor.next.next.next, cursor.next
  end

  head.next
end