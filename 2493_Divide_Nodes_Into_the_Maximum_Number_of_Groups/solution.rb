# @param {Integer} node_total_num
# @param {Integer[][]} edges
# @return {Integer}
def magnificent_sets(node_total_num, edges)
  @nodes = build_nodes(node_total_num, edges)
  return -1 unless suitable_sets?(node_total_num)

  connected_groups = build_groups(node_total_num)
  connected_results = find_longest_path_of_groups(node_total_num, connected_groups)
  connected_results.map(&:max).sum
end

def find_longest_path_of_groups(node_total_num, connected_groups)
  connected_results = []
  node_total_num.times do |node_num|
    max_depth = 0

    checked = []
    checked_previously = [node_num]
    check_necessary = []

    depth = 1
    until checked_previously.empty?
      while (node_num2 = checked_previously.pop)
        next if checked[node_num2]

        checked[node_num2] = true
        max_depth = depth if depth > max_depth
        @nodes[node_num2].each do |next_node|
          check_necessary << next_node
        end
      end
      checked_previously = check_necessary
      check_necessary = []

      depth += 1
    end
    
    group_num = connected_groups[node_num]
    (connected_results[group_num] ||= []) << max_depth
  end

  connected_results
end

def build_groups(node_total_num)
  connected_groups = []
  group_label = 0
  node_total_num.times do |node_num|
    next if connected_groups[node_num]

    mark_node(node_num, group_label, connected_groups)
    group_label += 1
  end

  connected_groups
end

def mark_node(node_num, label, connected_groups)
  return if connected_groups[node_num]

  connected_groups[node_num] = label
  
  @nodes[node_num].each do |next_node|
    mark_node(next_node, label, connected_groups)
  end
end

def build_nodes(node_total_num, edges)
  nodes = Array.new(node_total_num) { [] }
  edges.each do |start_point, end_point|
    nodes[start_point - 1] << (end_point - 1)
    nodes[end_point - 1] << (start_point - 1)
  end
  nodes
end

def suitable_sets?(node_total_num)
  @nodes_num = []
  @suitable = true
  node_total_num.times do |node_num|
    check_node_for_suitability(node_num, 0) if @nodes_num[node_num].nil?
  end
  @suitable
end

def check_node_for_suitability(node_num, level)
  return unless @suitable

  if @nodes_num[node_num] 
    @suitable = false if @nodes_num[node_num].even? != level.even?
    return
  else
    @nodes_num[node_num] = level
  end
  
  @nodes[node_num].each do |next_node|
    check_node_for_suitability(next_node, level + 1)
  end
end
