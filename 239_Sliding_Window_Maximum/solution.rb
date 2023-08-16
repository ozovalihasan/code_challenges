# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  window = nums[0...k]
  sorted_window = window.sort
  result = [sorted_window.last]

  0.upto(nums.size - 1 - k) do |index|
    popped_num = nums[index]
    popped_index = sorted_window.bsearch_index {|num| popped_num <=> num}
    sorted_window.delete_at(popped_index)

    added_num = nums[index + k]
    added_index = sorted_window.bsearch_index {|num| num > added_num} || k - 1
    sorted_window.insert(added_index, added_num)
    
    result << sorted_window.last
  end

  result
end