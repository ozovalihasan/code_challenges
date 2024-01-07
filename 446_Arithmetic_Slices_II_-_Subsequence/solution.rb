# @param {Integer[]} nums
# @return {Integer}
def number_of_arithmetic_slices(nums)
  @result = nums.tally.values.sum do |counts|
    (2**counts) - combination_with_less_than_three_elements(counts)  
  end

  return @result if all_elements_same?(nums)
  
  @indices_of_nums = {}
  
  nums.each_with_index do |num, index|
    (@indices_of_nums[num] ||= []) << index
  end

  nums.each_with_index do |num1, index1|
    (index1 + 1).upto(nums.size - 1) do |index2|
      @diff = (nums[index2] - num1)
      next if @diff.zero?

      check_next_num(nums[index2] + @diff, index2)
    end
  end

  @result
end

def check_next_num(next_num, last_index)
  return unless @indices_of_nums[next_num]

  new_index_start = @indices_of_nums[next_num].bsearch_index { |possible_index| possible_index > last_index }
  return unless new_index_start
  
  @indices_of_nums[next_num][new_index_start...].each do |next_index|
    @result += 1
    check_next_num(next_num + @diff, next_index)
  end
end

def combination_with_less_than_three_elements(count)
  1 + (count * (count + 1) / 2)
end

def all_elements_same?(nums)
  nums.all? nums.first
end
