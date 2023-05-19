# @param {Integer[][]} graph
# @return {Boolean}
def is_bipartite(graph)
  @graph = graph
  @result = {}

  graph.each_with_index do |nodes, node|
    next if @result[node]
     
    return false unless check(node, :red)
  end

  true
end

def check(node, color)
  return color == @result[node] if @result[node] 

  @result[node] = color
  
  color = (color == :red) ? :blue : :red
  @graph[node].each { |next_node| return false unless check(next_node, color) }
end