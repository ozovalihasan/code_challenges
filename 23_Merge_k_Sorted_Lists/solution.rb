# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  lists.delete(nil)
  
  return nil if lists.empty?
  
  values = []
  lists.each do |node|
    until node.nil?
      values << node.val
      node = node.next
    end
  end

  values.sort!
  head = ListNode.new(values.shift)
  cursor = head

  values.each do |value|
    cursor.next = ListNode.new(value)
    cursor = cursor.next
  end

  head
end