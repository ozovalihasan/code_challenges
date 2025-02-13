# @param {Integer[]} nums
# @param {Integer} limit
# @return {Integer}
def min_operations(nums, limit)
  sorted_nums = nums.select { |num| num < limit }.sort
  total_count = 0
  return 0 if sorted_nums.empty?

  results = []
  until (sorted_nums.first || Float::INFINITY) >= limit
    new_num = nil
    index = sorted_nums.index { |num| num != sorted_nums.first } || sorted_nums.size

    count = nil
    count = index >= 2 ? index / 2 : 1
    selected_nums = sorted_nums.shift(count * 2)
    new_num = (selected_nums.first * 2) + selected_nums.last
    
    index = results.size
    results.insert(index, *([new_num] * count))
    if results.first
      index = results.index { |num| num > (sorted_nums[0] || Float::INFINITY) } || results.size
      sorted_nums.insert(0, *results.shift(index)) if index.positive?
      
      index = results.index { |num| num > (sorted_nums[1] || Float::INFINITY) } || results.size
      sorted_nums.insert(1, *results.shift(index)) if index.positive?
    end
    
    total_count += count
  end
  total_count
end
