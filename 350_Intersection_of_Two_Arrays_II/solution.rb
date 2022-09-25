# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  nums1 = nums1.group_by(&:itself) 
  nums2 = nums2.group_by(&:itself) 
  
  result = []
  
  nums2.each { |num, value| result.concat( value.first( nums1[num].size ) ) if nums1[num] }
  
  result
end