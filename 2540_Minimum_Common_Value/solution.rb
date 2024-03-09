# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def get_common(nums1, nums2)
  return -1 if nums1.first > nums2.last || nums2.first > nums1.last
  
  (nums1 & nums2).min || -1
end