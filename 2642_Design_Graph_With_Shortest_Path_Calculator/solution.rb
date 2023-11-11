class Graph
=begin
  :type n: Integer
  :type edges: Integer[][]
=end
  def initialize(n, edges)
    @nodes = Array.new(n) {{}}
    
    edges.each do |edge|
      add_edge(edge)
    end
  end

=begin
  :type edge: Integer[]
  :rtype: Void
=end
  def add_edge((start_node, end_node, weight))
    @nodes[start_node][end_node] = weight
  end

=begin
  :type node1: Integer
  :type node2: Integer
  :rtype: Integer
=end
  def shortest_path(node1, node2)
    stack = [[node1, 0]]
    checked = Hash.new Float::INFINITY
    checked[node1] = 0

    until stack.empty?
      next_stack = []
      stack.sort_by(&:last).each do |current_node, current_weight|
        @nodes[current_node].each do |next_node, weight|
          next_sum = current_weight + weight

          next if checked[next_node] <= next_sum
          next if next_sum >= checked[node2]
          next if current_node == node2

          checked[next_node] = current_weight + weight
          next_stack.push([next_node, next_sum])
        end
      end

      stack = next_stack
    end

    checked[node2] == Float::INFINITY ? -1 : checked[node2]
  end

  
end

# Your Graph object will be instantiated and called as such:
# obj = Graph.new(n, edges)
# obj.add_edge(edge)
# param_2 = obj.shortest_path(node1, node2)