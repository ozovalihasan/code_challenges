# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def max_dot_product(nums1, nums2)
  return nums1.max * nums2.min if (nums1.max < 0 && 0 < nums2.min) 
  return nums2.max * nums1.min if (nums2.max < 0 && 0 < nums1.min)

  @nums1 = nums1
  @max_index1 = nums1.size - 1

  @nums2 = nums2
  @max_index2 = nums2.size - 1
  
  @memo = Array.new(nums1.size + 1) { Array.new(nums2.size) }
  check_nums(0, 0)
end

def check_nums(index1, index2)
  return @memo[index1][index2] if @memo[index1][index2]
  return @memo[index1][index2] = 0 if index1 > @max_index1 || index2 > @max_index2

  @memo[index1][index2] = [
                            check_nums(index1 + 1, index2),
                            check_nums(index1, index2 + 1),
                            @nums1[index1] * @nums2[index2] + check_nums(index1 + 1, index2 + 1)
                          ].max
end