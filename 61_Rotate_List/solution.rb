# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return head if k.zero?
  return head if head.nil?

  size = 0
  node = head
  until node.nil?
    size += 1
    node = node.next
  end
  k = k % size
  return head if k.zero?

  count = 0
  node = head
  until count == (size - k - 1)
    node = node.next
    count += 1
  end
  node_append = head
  head = node.next
  node.next = nil

  node_rest = head
  node_rest = node_rest.next until node_rest.next.nil?
  node_rest.next = node_append

  head
end
