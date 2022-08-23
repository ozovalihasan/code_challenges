# Thanks to @Stefan for the sharing(https://stackoverflow.com/questions/63181259/strange-behavior-with-bsearch-index#comment111734948_63181661)

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  nums.bsearch_index {|item| target <=> item} || -1
end