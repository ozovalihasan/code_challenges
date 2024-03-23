# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  node = head
  nodes = []
  while node
    node_next, node.next = node.next, nil
    nodes << node
    node = node_next
  end
  
  node = head = nodes.shift

  until nodes.empty?
    node.next = nodes.pop
    node.next.next = nodes.shift
    node = node.next.next
  end

  head
end
