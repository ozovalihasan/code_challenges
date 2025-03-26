# @param {Integer[][]} grid
# @param {Integer} x
# @return {Integer}
def min_operations(grid, x)
  nums = grid.flatten.sort
  median = nums[nums.size / 2]

  nums.each do |num|
    return -1 unless ((num - median).abs % x).zero? 
  end
  
  nums.sum do |num| 
    (num - median).abs / x
  end
end