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
  nodes = []

  until cursor.nil?
    return nodes.index(cursor) if nodes.include? cursor

    nodes << cursor
    cursor = cursor.next
  end
  
  -1
end