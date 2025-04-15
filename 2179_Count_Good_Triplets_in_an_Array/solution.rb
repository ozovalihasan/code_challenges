# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def good_triplets(nums1, nums2)
  num_to_position_in_nums2 = []
  nums2.each_with_index do |value, index|
    num_to_position_in_nums2[value] = index
  end

  ordered_indices_from_left = []
  nums_size = nums1.size
  nums1.each_with_index.sum do |num, index1|
    position_in_nums2 = num_to_position_in_nums2[num]
    
    insert_at = ordered_indices_from_left.bsearch_index { |position| position >= position_in_nums2 } || 
                ordered_indices_from_left.size
    
    ordered_indices_from_left.insert(insert_at, position_in_nums2)
    insert_at * (nums_size - index1 - 1 - (position_in_nums2 - insert_at))
  end
end