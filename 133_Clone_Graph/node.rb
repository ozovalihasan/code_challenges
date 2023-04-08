class Node
  attr_accessor :val, :neighbors

  def initialize(val = 0, neighbors = nil)
    @val = val
    neighbors = [] if neighbors.nil?
    @neighbors = neighbors
  end

  def to_a(cloned_nodes)
    return if cloned_nodes[val]
    cloned_nodes[val] = neighbors.map(&:val)
    neighbors.each do |neighbor|
      neighbor.to_a(cloned_nodes)
    end
  end
end