# @param {Integer[]} nums
# @param {Integer} min_house_num
# @return {Integer}
def min_capability(nums, min_house_num)
  @nums = nums
  (nums.min..nums.max).bsearch do |checked_num|
    suitable?(checked_num, min_house_num)
  end
end

def suitable?(max_value, min_house_num)
  index = 0
  
  while @nums[index] 
    if @nums[index] <= max_value
      index += 2
      min_house_num -= 1
    else
      index += 1
    end
  end

  min_house_num <= 0
end

