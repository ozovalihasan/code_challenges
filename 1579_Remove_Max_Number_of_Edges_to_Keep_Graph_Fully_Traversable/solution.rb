# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
def max_num_edges_to_remove(n, edges)
  nodes = Array.new(n) {|index| Node.new(index)}
  
  alice_edges_count = 0
  bob_edges_count = 0
  both_edges_count = 0

  edges.each do |type, first_node_index, second_node_index|
    first_node_index -= 1 
    second_node_index -= 1 
    
    if type == 1
      alice_edges_count += 1
      nodes[first_node_index].next_nodes[:alice] << nodes[second_node_index]
      nodes[second_node_index].next_nodes[:alice] << nodes[first_node_index]
    elsif type == 2
      bob_edges_count += 1
      nodes[first_node_index].next_nodes[:bob] << nodes[second_node_index]
      nodes[second_node_index].next_nodes[:bob] << nodes[first_node_index]
    else
      
      both_edges_count += 1
      nodes[first_node_index].next_nodes[:both] << nodes[second_node_index]
      nodes[second_node_index].next_nodes[:both] << nodes[first_node_index]
    end
  end
  
  return -1 if check_nodes_for_one_person(nodes, :alice) == -1
  return -1 if check_nodes_for_one_person(nodes, :bob) == -1
  
  needed_individual_edges_count = check_both_edges_only(nodes)
  alice_edges_count + bob_edges_count + (both_edges_count - (n - 1)) - needed_individual_edges_count
end

def check_nodes_for_one_person(nodes, person_name)
  @checked = Array.new(nodes.size, nil)
  check_node(nodes[0], person_name)

  return -1 if @checked.include? nil
end

def check_node(node, person_name)

  return if @checked[node.val]
  
  @checked[node.val] = true
  node.next_nodes[person_name].each do |next_node|
    check_node(next_node, person_name)
  end
  
  node.next_nodes[:both].each do |next_node|
    check_node(next_node, person_name)
  end
  
end

def check_both_edges_only(nodes)
  @checked = Array.new(nodes.size, nil)
  @checked.each_with_index do |_, connected_nodes_label|
    next if @checked[connected_nodes_label]

    check_both(nodes[connected_nodes_label], connected_nodes_label)
  end
  
  @checked.uniq.count - 1
end

def check_both(node, label)
  return if @checked[node.val]

  @checked[node.val] = label

  node.next_nodes[:both].each do |next_node|
    check_both(next_node, label)
  end
end

class Node
  attr_reader :val, :next_nodes
  
  def initialize(val)
    @val = val
    @next_nodes = {alice: [], bob: [], both: []}
    
  end
end