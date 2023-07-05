# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  return nums.size - 1 if nums.all? 1
  return 0 if nums.all? 0
  
  counts = nums.chunk(&:zero?).map {|bool, arr| arr.size * (bool ? -1 : 1)}
  counts.unshift 0

  counts.each_cons(3)
        .filter_map { |(first, middle, last)| first + last if middle == -1 }
        .push(counts.max)
        .max
end