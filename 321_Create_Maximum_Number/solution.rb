# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer[]}

"I couldn't solve this challenge"


def max_number(nums1, nums2, k)
  return [] if k == 0
  return false if (nums1.size + nums2.size) < k
  if (nums1.size + nums2.size) == k
    return add_numbers(nums1.clone, nums2.clone)
  end
  max = nil
  if nums1.size > k && nums2.size > k 
    max = [nums1.max, nums2.max].max
  elsif nums1.empty?
    max = nums2[..-k].max
  elsif nums2.empty?
    max = nums1[..-k].max
  else
    max = [*(nums1 + nums2)[..-k], *(nums2 + nums1)[..-k]].max
  end
  

  index1 = (nums1.index max)
  index2 = (nums2.index max)
  result = nil
  if index1 && index2.nil?
    result = max_number(nums1[(index1 + 1)..], nums2, k- 1)
    return false unless result
  end
  
  if index2 && index1.nil?
    result = max_number(nums1, nums2[(index2 + 1)..],  k - 1)
    return false unless result
  end

  if index1 && index2
    result1 = max_number(nums1[(index1 + 1)..], nums2, k- 1)
    result2 = max_number(nums1, nums2[(index2 + 1)..], k - 1)
    if result1 && result2
      result = (((result1 <=> result2) == 1) ? result1 : result2)
    elsif
      result = (result1 || result2)
    end
  end
  
  result.unshift(max)
end

def add_numbers(nums1, nums2)
  result = []
  until nums1.empty? || nums2.empty?
    if nums1.first > nums2.first
      result << nums1.shift
    elsif nums2.first > nums1.first
      result << nums2.shift
    else
      if (nums1 <=> nums2) == 1
        result << nums1.shift
      else
        result << nums2.shift
      end 
    end
  end
  
  if nums1.empty?
    result.concat nums2
  else
    result.concat nums1
  end

  result
end
