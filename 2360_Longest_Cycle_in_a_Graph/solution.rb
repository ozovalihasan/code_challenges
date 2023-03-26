# @param {Integer[]} edges
# @return {Integer}
def longest_cycle(edges)
  nodes = edges.size.times.map { Node.new }
  
  edges.each_with_index do |end_node, start_node| 
    next if end_node == -1 
    
    nodes[start_node].directed_node = nodes[end_node]
  end

  @max_length = -1
  
  group_number = 0
  nodes.each do |node|
    next if node.checked?

    check_node(node, 0, group_number)

    group_number += 1
  end
  
  @max_length
end

def check_node(node, current_step, group_number)
  return if node.nil?
  
  if node.checked?
    if group_number == node.group_number
      @max_length = [current_step - node.step, @max_length].max
    end

    return
  end

  node.step = current_step
  node.group_number = group_number

  check_node(node.directed_node, current_step + 1, group_number)
end

class Node
  attr_accessor :step, :group_number, :directed_node
  
  def initialize
    @directed_node = nil
    @step = nil
    @group_number = nil
  end

  def checked?
    not group_number.nil?
  end
  
end