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
def delete_duplicates(head)
  check_node(head)
  head
end

def check_node(node)
  until node.nil?

    while node.next&.val == node.val
      node.next = node.next.next
    end
    
    node = node.next
    
  end
end