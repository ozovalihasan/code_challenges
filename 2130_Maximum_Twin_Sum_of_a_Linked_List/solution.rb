# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def pair_sum(head)
  @max = 0
  sum_nodes(head, head)
  @max
end

def sum_nodes(node, head)
  return head if node.nil? 

  node2 = sum_nodes(node.next, head)
  @max = node2.val + node.val if (node2.val + node.val) > @max
  node2.next
end