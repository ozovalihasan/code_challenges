# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def min_sum(nums1, nums2)
  if valid_pair(nums1, nums2) && valid_pair(nums2, nums1)
    return [nums1.sum + nums1.count(0), nums2.sum + nums2.count(0)].max
  end
  
  -1
end

def valid_pair(nums1, nums2)
  !(nums1.count(0) == 0 && (nums2.sum + nums2.count(0) > nums1.sum))
end