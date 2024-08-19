# @param {Integer[]} nums
# @param {Integer} pair_length
# @return {Integer}
"I couldn't solve"
def minimize_max(nums, pair_length)
  return 0 if pair_length.zero?
  
  nums.sort!
  @differences = nums[1...].map.with_index {|num, index| num - nums[index] }
  p @differences
  @max_index = @differences.size - 1
  2.upto(pair_length) do |pair|
    min = @differences[0]
    @differences = 2.upto(@differences.size - 1).map do |index|
                    num = @differences[index - 2]
                    min = num if num < min
                    [min, @differences[index]].max
                  end
  end
  
  @differences.min
end