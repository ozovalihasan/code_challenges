# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
class FindElements
=begin
    :type root: TreeNode
=end
  def initialize(root)
    @tree = root  
    @nodes_found = Set.new
    stack = [[root, 0]]
    until stack.empty?
      node, num = stack.pop
      if node
        @nodes_found << num
      else
        next
      end
      
      stack << [node.left, num * 2 + 1] 
      stack << [node.right, num * 2 + 2] 
    end
  end

=begin
    :type target: Integer
    :rtype: Boolean
=end
  def find(target)
    @nodes_found.include? target
  end
end

# Your FindElements object will be instantiated and called as such:
# obj = FindElements.new(root)
# param_1 = obj.find(target)