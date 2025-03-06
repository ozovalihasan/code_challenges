# @param {Integer[][]} grid
# @return {Integer[]}
def find_missing_and_repeated_values(grid)
  nums = grid.flatten
  repeated_num = nums.tally.find { |k, v| v == 2 }.first
  missing_num = ((1..nums.size).to_a - nums).first
  [repeated_num, missing_num]
end
