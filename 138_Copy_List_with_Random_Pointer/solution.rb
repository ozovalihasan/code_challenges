# Definition for Node.
# class Node
#     attr_accessor :val, :next, :random
#     def initialize(val = 0)
#         @val = val
#		  @next = nil
#		  @random = nil
#     end
# end

# @param {Node} node
# @return {Node}
def copyRandomList(head)
  nodes = []
  clone_nodes = []

  cursor = head
  while cursor
    nodes << cursor 
    clone_nodes << Node.new(cursor.val) 
    cursor = cursor.next
  end

  nodes_optimized = nodes.map.with_index {|node, index| [node, index]}.to_h
  
  nodes.each_with_index do |node, index|
    clone_node = clone_nodes[index]
    clone_node.next = clone_nodes[index + 1]
    random_index = nodes_optimized[node.random]
    clone_node.random = clone_nodes[random_index] if random_index
  end

  clone_nodes.first
end