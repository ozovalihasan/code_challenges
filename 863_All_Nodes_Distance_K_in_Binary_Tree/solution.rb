# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @param {TreeNode} target
# @param {Integer} k
# @return {Integer[]}
def distance_k(root, target, k)
  @target = target
  @max_step = k
  @result = []
  check_node(root)
  @result
end

def check_node(node, step = nil)
  return if node.nil?
  return if step && (step < 0)

  step = @max_step if node == @target
  
  step = check_left_and_right(node, step)

  if step && step.zero?
    @result << node.val
  end

  step -= 1 if step
  step
end

def check_left_and_right(node, step)
  step_left = check_node(node.left, step ? step - 1 : nil)
  if step.nil? && step_left
    step = step_left 
  end

  step_right = check_node(node.right, step ? step - 1 : nil)
  if step.nil? && step_right
    step = step_right
    check_node(node.left, step ? step - 1 : nil)
  end
  
  step
end