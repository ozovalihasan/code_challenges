# @param {Integer[]} nums
# @param {Integer} limit
# @return {Integer[]}
def lexicographically_smallest_array(nums, limit)
  sorted_nums = nums.sort.reverse

  chunks = sorted_nums.chunk_while { |elt_before, elt_after| elt_before - elt_after <= limit }.to_a
  
  chunk_numbers = {}
  chunks.map.with_index do |chunk, index|
    chunk.each do |num|
      chunk_numbers[num] = index
    end
  end

  nums.map do |num|
    chunk_index = chunk_numbers[num]
    chunks[chunk_index].pop
  end
end
