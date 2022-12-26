# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  return true unless nums.include? 0

  possible_max_index = 0
  0.upto(nums.size - 1) do |index|
   
    return false if index > possible_max_index
   
    possible_max_index = [nums[index] + index, possible_max_index].max
  end
  true
end