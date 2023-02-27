# Definition for a QuadTree node.
# class Node
#     attr_accessor :val, :isLeaf, :topLeft, :topRight, :bottomLeft, :bottomRight
#     def initialize(val=false, isLeaf=false, topLeft=nil, topRight=nil, bottomLeft=nil, bottomRight=nil)
#         @val = val
#         @isLeaf = isLeaf
#         @topLeft = topLeft
#         @topRight = topRight
#         @bottomLeft = bottomLeft
#         @bottomRight = bottomRight
#     end
# end

# @param {Integer[][]} grid
# @return {Node}
def construct(grid)
  sample_cell = grid.first.first
  grid.each do |row|
    unless row.all? sample_cell  
      return divide_into_four(grid)
    end
  end

  Node.new(sample_cell == 1, true)
end

def divide_into_four(grid)
  size = grid.size

  grid_top, grid_bottom = grid.each_slice(size / 2).to_a
  
  grid_top_right = []
  grid_top.each {|row| grid_top_right << row.slice!(size / 2, size / 2)}

  grid_bottom_right = []
  grid_bottom.each {|row| grid_bottom_right << row.slice!(size / 2, size / 2)}
  
  Node.new(0, false, construct(grid_top), construct(grid_top_right), construct(grid_bottom), construct(grid_bottom_right) )
end