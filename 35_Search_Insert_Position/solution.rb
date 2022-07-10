# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  nums.bsearch_index {|num| num >= target} || nums.size
end