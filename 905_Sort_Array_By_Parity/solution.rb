# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  nums.partition(&:even?).flatten
end