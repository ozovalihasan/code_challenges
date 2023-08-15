# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  temp_head = ListNode.new(nil, head)
  cursor1 = temp_head

  while cursor1.next && cursor1.next.val < x
    cursor1 = cursor1.next
  end

  cursor2 = cursor1.next
  until cursor2.nil? || cursor2.next.nil?
    
    if cursor2.next.val < x
      cursor1.next, cursor2.next, cursor2.next.next = cursor2.next, cursor2.next.next, cursor1.next
      cursor1 = cursor1.next
    elsif
      cursor2 = cursor2.next
    end
    
  end

  temp_head.next
end