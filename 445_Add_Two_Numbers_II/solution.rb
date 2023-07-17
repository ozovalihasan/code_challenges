# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  digits1 = digits(l1)
  digits2 = digits(l2)

  total = digits1.to_i + digits2.to_i
  set_link_list(total.digits)
end

def digits(list_node, digits = "")
  return "" if list_node.nil?

  list_node.val.to_s + digits(list_node.next, digits)
end

def set_link_list(arr)
  head = ListNode.new(arr.pop)
  cursor = head

  until arr.empty?
    cursor.next = ListNode.new(arr.pop)
    cursor = cursor.next
  end

  head
end