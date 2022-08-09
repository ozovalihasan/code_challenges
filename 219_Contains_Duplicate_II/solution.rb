# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  return false if nums.uniq == nums
  
  hash = {}
  hash.default = -k - 1
  nums.each_with_index do |num, index|
    return true if (index - hash[num]) <= k
    hash[num] = index
  end
  
  false
end