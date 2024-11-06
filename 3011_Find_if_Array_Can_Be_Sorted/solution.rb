# @param {Integer[]} nums
# @return {Boolean}
def can_sort_array(nums)
  minmax_chunks = nums.chunk { |num| num.to_s(2).count('1') }.map { |_count, arr| arr }.map(&:minmax)
  minmax_chunks.each_cons(2).all? { |(_, max1), (min2, _)| max1 <= min2 }
end
