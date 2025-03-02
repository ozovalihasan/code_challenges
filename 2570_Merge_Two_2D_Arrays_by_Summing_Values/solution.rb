# @param {Integer[][]} nums1
# @param {Integer[][]} nums2
# @return {Integer[][]}
def merge_arrays(nums1, nums2)
  nums1.to_h.merge(nums2.to_h) { |_key, old_val, new_val| old_val + new_val }.sort
end
