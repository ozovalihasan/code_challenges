# @param {Integer[]} nums
# @param {Integer} arr_size
# @return {Integer[]}
def max_sum_of_three_subarrays(nums, arr_size)
  sums = []
  sum = nums.first(arr_size).sum
  0.upto(nums.size - arr_size) do |index|
    sums[index] = sum
    sum += (nums[index + arr_size] || 0) - nums[index]
  end

  second_result = []
  max = [0, -1]
  total_length = arr_size
  (sums.size - total_length).times do |index|
    max = [sums[index], index] if sums[index] > max.first
    second_result[index] = [max.first + sums[index + total_length], max[-1], index + total_length]
  end

  third_result = []
  max = [0, -1, - 1]
  total_length = arr_size * 2
  (sums.size - total_length).times do |index|
    max = second_result[index] if second_result[index].first > max.first
    third_result[index] = [max.first + sums[index + total_length], max[-2], max[-1], index + total_length]
  end

  third_result.max_by(&:first)[1..]
end
