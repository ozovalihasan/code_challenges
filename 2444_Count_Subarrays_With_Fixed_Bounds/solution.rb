# @param {Integer[]} nums
# @param {Integer} min_k
# @param {Integer} max_k
# @return {Integer}
def count_subarrays(nums, min_k, max_k)
  chunks = nums.chunk {|num| num.between? min_k, max_k }
               .select {|statement, chunk| statement && chunk.include?(min_k) && chunk.include?(max_k)}
               .map(&:last)
      
  counter = 0
  chunks.each do |chunk| 
    next counter += (chunk.size * (chunk.size + 1) / 2) if min_k == max_k

    last_bound = nil
    last_processed_index = -1
    last_bound = ( chunk.index(min_k) < chunk.index(max_k) ) ? [min_k, -1] : last_bound = [max_k, -1]
    
    chunk.each_with_index do |num, index|
      if (num == min_k) || (num == max_k)

        unless num == last_bound.first
          counter += (chunk.size - index) * (last_bound.last - last_processed_index) 
          last_processed_index = last_bound.last
        end

        last_bound = [num, index]
      end
    end
  end
  counter
end