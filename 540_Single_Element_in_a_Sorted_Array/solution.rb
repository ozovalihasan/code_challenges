# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
  return nums.first if nums.size == 1
  
  left = 0
  right = nums.size - 1
  index = (left + right) / 2

  loop do
    if nums[index - 1] == nums[index] 
      left, index, right = update_boundaries(index.even?, left, index, right)
    elsif nums[index + 1] == nums[index]
      left, index, right = update_boundaries(index.odd?, left, index, right)
    else
      return nums[index]
    end
  end
end

def update_boundaries(statement, left, index, right)
  if statement
    right = index
  else
    left = index + 1
  end
  index = (left + right) / 2

  [left, index, right]
end