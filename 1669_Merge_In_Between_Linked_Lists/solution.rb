# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {Integer} a
# @param {Integer} b
# @param {ListNode} list2
# @return {ListNode}
def merge_in_between(list1, a, b, list2)
  head = list1

  change_start = nil
  change_end = nil
  a -= 1
  b += 1
  counter = 0
  loop do
    change_start = list1 if counter == a
    break change_end = list1 if counter == b
      
    list1 = list1.next
    counter += 1
  end

  change_start.next = list2
  result_list = change_start
  result_list = result_list.next until result_list.next.nil?
  result_list.next = change_end

  head
end