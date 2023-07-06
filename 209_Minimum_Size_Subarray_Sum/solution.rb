# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  start_index = 0
  sum = 0
  lengths = []

  nums.each_with_index do |num, index|
    sum += num

    if sum >= target
      until (sum - nums[start_index]) < target  do
        sum -= nums[start_index]
        start_index += 1
      end

      lengths << (index - start_index + 1)
    end
  end

  lengths.min || 0
end