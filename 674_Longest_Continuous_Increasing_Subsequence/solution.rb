# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  nums.chunk_while(&:<).map(&:size).max
end