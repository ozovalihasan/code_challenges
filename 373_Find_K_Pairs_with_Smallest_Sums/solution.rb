# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer[][]}
def k_smallest_pairs(nums1, nums2, k)
  index1 = 0
  index2 = 0
  result = []
  until result.size >= k
    p '----------------'
    p '----------------'
    p index1
    p index2
    if nums2[index2].nil? && nums1[index1].nil?
      return result
    elsif nums2[index2].nil?
      p '================='
      p '================='
      p index1
      p num1 = nums1[index1]
      index = nums2.bsearch_index {|num| num > num1} || nums2.size
      nums2[0...index].each do |num|
        p '********************'
        p result << [num1, num]
      end

      index2 += 1
    elsif nums1[index1].nil?
      num2 = nums2[index2]
      index = nums1.bsearch_index {|num| num > num2} || nums1.size
      nums1[0...index].each do |num|
        result << [num, num2]
      end
      index1 += 1
    elsif nums1[index1] >= nums2[index2]
      num1 = nums1[index1]
      index = nums2.bsearch_index {|num| num > num1} || nums2.size
      nums2[0...index].each do |num|
        p '================='
        p result << [num1, num]
      end
      index2 += 1
    else
      num2 = nums2[index2]
      index = nums1.bsearch_index {|num| num > num2} || nums1.size
      nums1[0...index].each do |num|
        p '----------------'
        p result << [num, num2]
      end
      index1 += 1
    end
  end
  p result
  result.first(k)
end
