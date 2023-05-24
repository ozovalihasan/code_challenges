# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def max_score(nums1, nums2, k)
  nums = nums1.zip(nums2).sort_by(&:last)
  num2 = nums[-k].last
  @selected = nums.pop(k).map!(&:first).sort!
  @sum = @selected.sum
  max = @sum * num2

  nums.reverse_each do |num1, num2|
    if num1 > @selected.first
      update_selected_ones( num1 )
      
      max = @sum * num2 if (@sum * num2) > max
    end
      
  end
  
  max
end

def update_selected_ones( num1 )
  index = @selected.bsearch_index {|selected_num| selected_num > num1} 
  index ? @selected.insert(index, num1) : @selected << num1

  @sum += num1 - @selected.shift
end