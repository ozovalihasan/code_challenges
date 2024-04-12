# @param {Integer[]} height
# @return {Integer}
def trap(height)
  max_height = height.max
  index = height.index max_height
  check_columns(height[...index]) + check_columns(height[index + 1..].reverse)
end

def check_columns(heights)
  previous = 0
  heights.sum do |height|
    previous = height if height >= previous
    previous - height
  end
end