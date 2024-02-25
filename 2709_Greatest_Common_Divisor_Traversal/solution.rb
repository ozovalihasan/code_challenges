# @param {Integer[]} nums
# @return {Boolean}
def can_traverse_all_pairs(nums)
  return true if nums.size == 1
  return false if nums.any? 1
  return true if nums.all?(nums.first)

  @connected = {}
  nums = nums.uniq
  nums.each_with_index do |num1, index1|
    (index1 + 1).upto(nums.size - 1) do |index2|
      num2 = nums[index2]
      if num1.gcd(num2) > 1
        (@connected[num1] ||= []) << num2
        (@connected[num2] ||= []) << num1
      end
    end

    return false unless @connected[num1]
  end
  
  @checked = {}
  check_next_nums(nums.first)
  @checked.size == nums.size
end

def check_next_nums(num)
  return if @checked[num]

  @checked[num] = true
  @connected[num]&.each do |next_num|
    check_next_nums(next_num)
  end
end