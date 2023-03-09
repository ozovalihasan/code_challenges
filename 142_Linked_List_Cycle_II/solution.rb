# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  cursor = head
  nodes_encounter = {}

  while cursor
    break if nodes_encounter[cursor]

    nodes_encounter[cursor] = true
    cursor = cursor.next
  end
  
  cursor
end