# @param {Integer[]} nums
# @param {Integer} min_k
# @param {Integer} max_k
# @return {Integer}
def count_subarrays(nums, min_k, max_k)
  @min_k = min_k
  @max_k = max_k
  chunks = nums.chunk {|num| num.between? min_k, max_k }
               .select {|statement, chunk| statement && chunk.include?(min_k) && chunk.include?(max_k)}
               .map(&:last)
      
  chunks.sum {|chunk| check_chunk(chunk)}
end

def check_chunk(chunk)
  counter = 0
  size = chunk.size
  return counter += (size * (size + 1) / 2) if @min_k == @max_k

  right_index = -1
  counts = Hash.new(0)
  chunk.each_with_index do |left_num, left_index|
    until counts[@min_k].positive? && counts[@max_k].positive?
      right_index += 1
      return counter if right_index == size

      right_num = chunk[right_index]
      counts[right_num] += 1
    end

    counter += size - right_index
    counts[left_num] -= 1
  end     
end