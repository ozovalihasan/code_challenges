# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
  @nums = nums
  @memo = [1]
  calculate_for(target) 
end

def calculate_for(target) 
  unless @memo[target]
    @memo[target] = @nums.sum do |num| 
                      target >= num ? calculate_for(target - num) : 0 
                    end
  end

  @memo[target]
end