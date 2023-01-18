# @param {Integer[]} nums
# @return {Integer}
def max_subarray_sum_circular(nums)
  return nums.max if nums.count(&:positive?) < 2

  max_so_far = 0
  max_ending_here = 0

  min_so_far = 0
  min_ending_here = 0

  nums.each do |num|
    max_ending_here = [ num, max_ending_here + num ].max
    max_so_far = [max_so_far, max_ending_here].max

    min_ending_here = [ num, min_ending_here + num ].min
    min_so_far = [min_so_far, min_ending_here].min
  end

  [nums.sum - min_so_far, max_so_far].max
end