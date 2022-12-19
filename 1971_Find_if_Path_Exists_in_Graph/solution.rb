# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}
def valid_path(n, edges, source, destination)
  return true if source == destination || 
                 edges.include?([source, destination]) || 
                 edges.include?([destination, source])
  
  graph = {}
  until edges.empty?
    num1, num2 = edges.pop
    ( graph[num1] ||= [] ) << num2
    ( graph[num2] ||= [] ) << num1
  end

  current = [source]
  until current.empty?
    current = current.map { |num| graph.delete(num) }.compact.flatten
    return true if current.include? destination
  end
  
  false
end