# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  result = []
  nums.zip(index) do |num, num_index|
    result.insert(num_index, num)
  end

  result
end