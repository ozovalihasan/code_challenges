# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer[][]} query
# @return {Integer[]}
def minimum_cost(n, edges, query)
  @nodes = Array.new(n) { [] }

  edges.each do |start_node, ending_node, weight|
    @nodes[start_node] << [ending_node, weight]
    @nodes[ending_node] << [start_node, weight]
  end

  @connected_groups = []
  @connected_group_result = {}

  @checked = {}
  @nodes.each_with_index do |_connected_nodes, node_num|
    @connected_group_result[node_num] = check(node_num, node_num)
  end
  
  query.map do |start_point, end_point|
    if @connected_groups[start_point] != @connected_groups[end_point]
      -1
    else
      @connected_group_result[@connected_groups[start_point]]
    end
  end
end

def check(node_num, connected_group_num)
  if @checked[node_num]
    return
  end

  @checked[node_num] = true
  
  @connected_groups[node_num] = connected_group_num
  return 0 if @nodes[node_num].empty?
  result = @nodes[node_num].last.last
  
  @nodes[node_num].each do |connected_node, weight|
    sub_result = check(connected_node, connected_group_num)
    
    result &= weight
    result &= sub_result if sub_result  
  end

  result
end