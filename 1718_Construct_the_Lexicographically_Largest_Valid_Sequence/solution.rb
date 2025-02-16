# @param {Integer} num
# @return {Integer[]}
def construct_distanced_sequence(num)
  return [1] if num == 1

  @nums = (1...num).to_a.reverse
  @results = [num]
  @results[num] = num
  @max_result_index = (2 * num) - 2 
  fill(1)
  
  @results
end

def fill(starting_index)
  return true if @nums.empty?

  index = starting_index
  index += 1 while @results[index]

  0.upto(@nums.size - 1) do |num_index|
    num = @nums.delete_at(num_index)
    
    if (@results[index + num].nil? && num + index <= @max_result_index) || num == 1
      @results[index] = num
      @results[index + num] = num unless num == 1

      return true if fill(index + 1)

      @results[index] = nil
      @results[index + num] = nil unless num == 1

    end
    
    @nums.insert(num_index, num)
  end

  false  
end
