# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  result = []

  until nums1.empty? && nums2.empty?
    result << if ((nums1.last && nums2.last && nums1.last >= nums2.last) || !nums2.last) 
                nums1.pop 
              else
                nums2.pop
              end
  end

  size = result.size
  half_size = size / 2

  return result[ half_size ] if size.odd? 
    
  result[ half_size - 1..half_size ].sum.to_f/2
end