# @param {Integer[]} nums
# @param {Integer[]} indices
# @return {Integer[]}
def create_target_array(nums, indices)
  result = []
  nums.each_with_index do |num, index|
    result.insert(indices[index], num)
  end

  result
end