# @param {Integer} n
# @param {Integer[][]} edges
# @param {Boolean[]} has_apple
# @return {Integer}
def min_time(n, edges, has_apple)
  return 0 if has_apple.none?
  
  @tree = { 0 => []}
  @has_apple = has_apple
  @result = 0

  edges.each do |start_node, end_node|
    if @tree[start_node]
      @tree[start_node] << end_node
      @tree[end_node] = []
    else
      @tree[end_node] << start_node
      @tree[start_node] = []
    end
    
  end

  starting_node = 0
  check_node(starting_node)
  @result
end

def check_node(node_val)
  @tree[node_val].map! { |subnode_val| @result += 2 if check_node(subnode_val) }
  
  @tree[node_val].any? || @has_apple[node_val]
end