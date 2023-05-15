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
# @return {ListNode}
def swap_nodes(head, k)
  length = list_length(head)
  
  nodes = find_nodes(head, k, length)
  
  nodes.first.val, nodes.last.val = nodes.last.val, nodes.first.val

  head
end

def find_nodes(head, k, length)
  node_indices = [k, length - k + 1]
  
  nodes = []
  counter = 0
  cursor = head
  until nodes.size == 2
    counter += 1
    nodes << cursor if node_indices.last == counter
    nodes << cursor if node_indices.first == counter
    cursor = cursor.next
  end
  
  nodes
end

def list_length(head)
  length = 0
  cursor = head

  until cursor.nil?
    length += 1
    cursor = cursor.next
  end

  length
end