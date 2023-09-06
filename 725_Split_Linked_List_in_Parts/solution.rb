# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode[]}
def split_list_to_parts(head, k)
  parts_size = k

  return [head] if parts_size == 1

  result = set_result_sizes(head, parts_size)

  current_head = head
  result.map do |part_size|
    cursor = current_head

    if part_size > 0
      (part_size - 1).times { cursor = cursor.next } 

      previous_node, cursor = cursor, cursor.next
      previous_node.next = nil
      subresult = current_head
      current_head = cursor
      
      subresult
    else 
      nil
    end
  end
end

def set_result_sizes(head, parts_size)
  cursor = head
  list_size = 0
  while cursor
    list_size += 1
    cursor = cursor.next
  end

  size_of_larger_parts = (list_size - 1) % parts_size + 1
  reference_part_size = (list_size - 1) / parts_size
  Array.new(size_of_larger_parts, reference_part_size + 1).concat(Array.new(parts_size - size_of_larger_parts, reference_part_size))
end