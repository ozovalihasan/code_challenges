# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  first = nums.bsearch_index {|num| num >= target}
  if first && nums[first] == target
    last = (nums.bsearch_index {|num| num > target} || nums.size) - 1
  else
    return [-1, -1]
  end
  
  [first, last]
end