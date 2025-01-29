# @param {Integer[][]} edges
# @return {Integer[]}
def find_redundant_connection(edges)
  @nodes = Array.new(edges.size + 1) { [] }
  edges.each do |first_node, second_node|
    @nodes[first_node] << second_node
    @nodes[second_node] << first_node
  end

  @cycle = {}
  @allow_to_add = false
  @target = nil
  @visited = Array.new(edges.size + 1, false)
  check_node(1, nil)
  index = edges.rindex { |starting_point, end_point| @cycle[starting_point] && @cycle[end_point] }
  edges[index]
end

def check_node(node, previous_node)
  if @visited[node] 
    @allow_to_add = true 
    @cycle[node] = true
    return @target = node 
  end

  @visited[node] = true
  @nodes[node].each do |neighbor|
    next if neighbor == previous_node

    check_node(neighbor, node)
    @allow_to_add = false if node == @target
    @cycle[node] = true if @allow_to_add && @target

    break if @target
  end
end
