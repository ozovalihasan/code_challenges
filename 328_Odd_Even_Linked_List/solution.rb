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
def odd_even_list(head)
  return nil if head.nil?

  node = head
  node2 = head.next
  head2 = node2

  until node2&.next.nil?
    node.next = node2.next
    node2.next = node2.next.next
    node.next.next = head2

    node = node.next
    node2 = node2.next
  end

  head
end
