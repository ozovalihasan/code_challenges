# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  return 0 if nums.size == 1

  nums.map!.with_index { |num, index| num + index }
  index, jump = 0, 0 
  loop do
    num = nums[index]
    return jump + 1 if num >= (nums.size - 1)

    limited_nums = nums[index + 1..num]
    index += limited_nums.rindex(limited_nums.max) + 1
    jump += 1
  end

  jump
end
