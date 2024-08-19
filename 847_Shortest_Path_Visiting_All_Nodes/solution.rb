"I have solved the challenge but it is so slow. So, I will update it soon"

# @param {Integer[][]} graph
# @return {Integer}
def shortest_path_length(graph)
  @graph = graph
  @edges = {}
  
  count = 0
  graph.each_with_index do |second_nodes, first_node|
    second_nodes.each do |second_node|
      @edges[[first_node, second_node]] = 2 ** count
      count += 1
    end
  end

  @nodes = []
  graph.each_index do |index|
    @nodes[index] = 2 ** index
  end
  
  @max_path = Float::INFINITY
  @expected_checked = 2 ** graph.size - 1
  @checked_edges = Set.new
  
  
  step = 0
  graph.each_index do |node|
    check_node(node)
  end

  @max_path
end

def check_node(node, checked = 0, checked_edge = 0, step = 0)
  
  return if @checked_edges.include? [node, step, checked]
  @checked_edges << [node, step, checked]

  return if step >= @max_path
  
  checked = checked | @nodes[node]
  if checked == @expected_checked
    @max_path = step 
    return
  end

  step += 1
  
  @graph[node].each do |second_node|
    edge = @edges[[node, second_node]]
  
    next_checked_edge = checked_edge | edge
    if checked_edge != next_checked_edge
      check_node(second_node, checked, next_checked_edge, step)
    end
  end

  
end