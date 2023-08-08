# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  first_num = nums.first
  rotating_index = nums.bsearch_index {|num| num < first_num } || nums.size
  
  if target >= nums[0]
    nums[...rotating_index].bsearch_index {|num| target <=> num } || -1
  else
    rotating_index + (nums[rotating_index...].bsearch_index {|num| target <=> num } || (- index - 1))  
  end
end