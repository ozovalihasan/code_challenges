# @param {Integer[][]} edges
# @param {Integer} bob
# @param {Integer[]} amount
# @return {Integer}
def most_profitable_path(edges, bob, amount)
  @connected_nodes = Array.new(amount.size) { [] }
  @amount = amount.dup
  edges.each do |starting_node, ending_node|
    @connected_nodes[starting_node] << ending_node
    @connected_nodes[ending_node] << starting_node
  end
  @bob_node = bob
  @alice_node = 0
  
  @leaf_nodes = {}
  @connected_nodes.each_with_index do |connected_nodes, node_num| 
    @leaf_nodes[node_num] = true if connected_nodes.size == 1 
  end
  @leaf_nodes.delete(@alice_node)
  
  @remove_steps_limit = nil
  @used = []
  set_amount_for_path_to_alice(@bob_node, 0)
  
  @used.clear
  @profits = []
  find_max_profit(@alice_node, 0)
  @profits.max
end

def find_max_profit(node_num, profit)
  profit += @amount[node_num]
  if @leaf_nodes[node_num]
    @profits << profit
    return
  end

  return if @used[node_num]
  
  @used[node_num] = true
  @connected_nodes[node_num].each do |connected_node|
    find_max_profit(connected_node, profit)
  end
end

def set_amount_for_path_to_alice(node_num, step)
  if node_num == @alice_node
    @remove_steps_limit = step / 2
    @half_amount = step.even?
    return 
  end

  return if @used[node_num]

  @used[node_num] = true

  @connected_nodes[node_num].each do |connected_node|
    set_amount_for_path_to_alice(connected_node, step + 1)
    
    next unless @remove_steps_limit

    if step == @remove_steps_limit 
      if @half_amount
        @amount[node_num] /= 2
      else
        @amount[node_num] = 0
      end
    elsif step < @remove_steps_limit
      @amount[node_num] = 0
    end

    break
  end
end
