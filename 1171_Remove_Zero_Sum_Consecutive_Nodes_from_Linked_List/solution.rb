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
def remove_zero_sum_sublists(head)
  new_head_node = ListNode.new(0, head)
  
  @results = { 0 => [new_head_node]}
  check_node(head, 0)
  new_head_node.next
end

def check_node(node, sum)
  return if node.nil?

  sum += node.val
  if @results[sum]
    @results[sum].each do |selected_node|
      selected_node.next = node.next 
    end
  else
    @results[sum] = []
  end
  @results[sum] << node

  check_node(node.next, sum)
end