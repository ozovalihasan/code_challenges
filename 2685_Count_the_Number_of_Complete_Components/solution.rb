# @param {Integer} num
# @param {Integer[][]} edges
# @return {Integer}
def count_complete_components(num, edges)
  @nodes = Array.new(num) { [] }
  edges.each do |start_node, ending_node|
    @nodes[start_node] << ending_node
    @nodes[ending_node] << start_node
  end

  @checked = []
  @group_num = {}
  num.times do |node_num|
    next if @checked[node_num]

    @group_num[node_num] = []
    check(node_num, node_num)
  end
  
  @group_num.count do |_, group|
    group_size = group.size

    group.all? { |node| @nodes[node].size == group_size - 1 }
  end
end

def check(node_num, connected_group_num)
  return if @checked[node_num]

  @checked[node_num] = true
  @group_num[connected_group_num] << node_num 
  @nodes[node_num].each do |connected_node|
    check(connected_node, connected_group_num)
  end
end