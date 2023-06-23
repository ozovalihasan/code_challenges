# @param {Integer[]} nums
# @return {Integer}
def longest_arith_seq_length(nums)
  nums_counts = nums.tally
  max_count_of_a_num = nums_counts.values.max
  
  return max_count_of_a_num if max_count_of_a_num >= nums_counts.size
  
  result = {}
  nums.each_index { |index| result[index] = Hash.new(1) }
  nums.each_with_index do |num1, index1|
    (index1 + 1).upto(nums.size - 1) do |index2|
      diff = nums[index2]  - num1
      
      result[index2][diff] = result[index1][diff] + 1
    end
  end

  result.values.map!(&:values).flatten!.max
end