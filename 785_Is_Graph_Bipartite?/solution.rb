# @param {Integer[][]} graph
# @return {Boolean}
def is_bipartite(graph)
  @graph = graph
  @result = {}

  graph.each_with_index do |nodes, node|
    next if @result[node]
     
    return false unless check(node, :a)
  end

  true
end

def check(node, label)
  return label == @result[node] if @result[node] 

  @result[node] = label
  
  label = (label == :a) ? :b : :a
  @graph[node].each { |next_node| return false unless check(next_node, label) }
end