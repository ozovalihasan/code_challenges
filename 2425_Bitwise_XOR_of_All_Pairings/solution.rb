# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def xor_all_nums(nums1, nums2)
  result = 0

  result ^= nums1.inject(&:^) if nums2.length.odd?
  result ^= nums2.inject(&:^) if nums1.length.odd?

  result
end
