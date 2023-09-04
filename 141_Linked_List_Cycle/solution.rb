# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  cursor_slow = head
  cursor_fast = head&.next

  while cursor_fast
    return true if cursor_fast == cursor_slow
    
    cursor_slow = cursor_slow.next
    cursor_fast = cursor_fast.next&.next
  end

  false
end