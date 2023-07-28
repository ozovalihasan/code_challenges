# @param {Integer[]} nums
# @return {Boolean}
def predict_the_winner(nums)
  @nums = nums 
  
  @memo = Array.new(nums.size) {[]}
  result = check_arr(0, nums.size - 1)

  result.last >= result.first
end

def check_arr(left_index, right_index)
  if @memo[left_index][right_index]
    return @memo[left_index][right_index]
  end

  if left_index == right_index
    return @memo[left_index][right_index] = [0, @nums[left_index]] 
  end

  left_selected = check_arr(left_index + 1, right_index).reverse
  left_selected[-1] += @nums[left_index]
  
  right_selected = check_arr(left_index, right_index - 1).reverse
  right_selected[-1] += @nums[right_index]

  @memo[left_index][right_index] = [left_selected, right_selected].max_by(&:last)
end