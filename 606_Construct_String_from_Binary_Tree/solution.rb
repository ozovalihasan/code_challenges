# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {String}
def tree2str(root)
  result = ""
  root.check_node(result)
  result
end

class TreeNode

  def check_node(result)

    result << self.val.to_s

    if left || right
      
      result << "("
      left.check_node(result) if left
      result << ")"

      if right
        result << "("
        right.check_node(result)
        result << ")"
      end
    end
  end
end