# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  first_num = nums.first
  return true if first_num == target
  
  nums.pop while first_num == nums.last

  return false if nums.empty?

  rotating_index = nums.bsearch_index {|num| num < first_num } || nums.size
  if target >= nums[0]
    nums[...rotating_index].bsearch_index {|num| target <=> num } != nil
  else
    nums[rotating_index...].bsearch_index {|num| target <=> num } != nil
  end
end