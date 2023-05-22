# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  nums.tally
      .sort_by(&:last)
      .last(k)
      .map!(&:first)
end