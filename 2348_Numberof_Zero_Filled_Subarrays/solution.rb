# @param {Integer[]} nums
# @return {Integer}
def zero_filled_subarray(nums)
  nums.chunk(&:zero?)
      .filter_map {|all_zeros, arr| arr.size if all_zeros}
      .sum {|size| (size + 1) * size / 2 }
end