# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  nums1.pop(n)
  (m + n).times do |index|
    num = nums1[index]
    if num.nil? || (nums2.first && num >= nums2.first)
      nums1.insert(index, nums2.shift)
    end
  end 
end