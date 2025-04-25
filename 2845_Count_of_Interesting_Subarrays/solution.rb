# @param {Integer[]} nums
# @param {Integer} modulo
# @param {Integer} k
# @return {Integer}
def count_interesting_subarrays(nums, modulo, k)
  nums.map! { |num| (num % modulo == k) ? 1 : 0 } 

  indices = Array.new(nums.sum + 1, 0)
  indices[0] = 1
  count = 0
  nums.each do |num|
    count += 1 if num == 1
    indices[count] += 1
  end
  
  cumulative_counts = []
  modulo.times do |index|
    current_index = indices.size - 1 - index
    break if current_index < 0

    count = 0
    while current_index >= 0
      count += indices[current_index]
      cumulative_counts[current_index] = count
      current_index -= modulo
    end
  end
  
  result = 0
  indices.each_with_index do |count, index|
    last_index = index + k

    if k.zero?
      result += ((count - 1) * count) / 2
      last_index += modulo
    end
    
    result += count * cumulative_counts[last_index] if cumulative_counts[last_index]
  end

  result
end