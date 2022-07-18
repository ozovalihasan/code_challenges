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

  node = head

  left_node_previous = nil

  count = 1
  if left > 1
    count += 1

    while count < left
      node = node.next
      count += 1
    end

    left_node_previous = node
    left_node = node.next
    left_node_previous.next = nil

    new_head = left_node
  else
    new_head = head
  end

  tail_reversed = new_head
  node = new_head.next
  new_head.next = nil

  while count < right
    node_previous = node
    node = node.next

    node_previous.next = new_head
    new_head = node_previous
    count += 1
  end

  tail_reversed.next = node
  if left == 1
    head = new_head
  else
    left_node_previous.next = new_head
  end

  head
end
