# @param {Integer[]} vals
# @param {Integer[][]} edges
# @return {Integer}

def number_of_good_paths(vals, edges)
  @vals = vals
  @nodes = []
  edges.each do |starting_node, ending_node|
    (@nodes[starting_node] ||= []) << ending_node
    (@nodes[ending_node] ||= []) << starting_node  
  end
  @total = Hash.new 0
  
  node = @nodes.index { |connected_nodes| connected_nodes.size == 1 }
  check(node) if node
  @total.values.sum + vals.size
end

def check(node)
  current_val = @vals[node]
  result = { current_val => 1 } 

  until @nodes[node].empty?
    next_node = @nodes[node].pop
    @nodes[next_node].delete(node)

    result.merge!(check(next_node)) do |key, old_val, new_val|
      @total[key] += old_val * new_val unless key < current_val
      old_val + new_val
    end
    
  end
  
  result.select! { |key, _val| key >= current_val }    

  result
end
