# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[][]}
"I couldn't solve"
def find_critical_and_pseudo_critical_edges(n, edges)
  edges_indices = {}
  @connected_edges = Array.new(n) {[]}
  edges.each_with_index do |edge, index|
    edges_indices[edge] = index
    @connected_edges[edge[0]] << [edge[1], edge[-1], index]
    @connected_edges[edge[1]] << [edge[0], edge[-1], index]
  end

  @used = {}
  @result = []
  @max_step = n - 1
  @max_weight = Float::INFINITY
  0.upto( n - 1).each do |label|
    check_node(label, 0, 0, [])
  end
  
  critical_ones  = @result.inject(&:&)
  pseudo_critical_edges = (@result.inject(&:|) - critical_ones)
  [critical_ones, pseudo_critical_edges]
end

def check_node(label, step, total_weight, used_edges)
  return if @used[label] || total_weight > @max_weight
  
  if step == @max_step
    if @max_weight > total_weight
      @max_weight = total_weight
      @result = []
    end
    @result << used_edges.clone
    

    return
  end
  step += 1
  @used[label] = true
  @connected_edges[label].each do |next_label, weight, index|
    used_edges << index
    check_node(next_label, step, total_weight + weight, used_edges)
    used_edges.pop
  end
  @used[label] = false
end

