# @param {Integer[]} nums
# @return {Integer}
def ways_to_split_array(nums) 
  diff = 1 - nums.sum
  
  nums[...-1].count do |num|
    diff += 2 * num

    diff.positive?
  end
end
