def max_k_divisible_components(node_count, edges, values, val_to_divide)
  @connections = Array.new(node_count) { [] }
  @values = values
  @result = []
  @checked = []

  build_graph(edges)
  calculate_sums(0, val_to_divide)
  
  @result.count { |sum| (sum % val_to_divide).zero? }
end

def build_graph(edges)
  edges.each do |start_point, end_point|
    @connections[start_point] << end_point
    @connections[end_point] << start_point
  end
end

def calculate_sums(node, val_to_divide)
  return 0 if @checked[node]

  @checked[node] = true

  sum = @connections[node].sum do |neighbor|
    calculate_sums(neighbor, val_to_divide)
  end
  sum += @values[node]
  
  @result[node] = sum
end
