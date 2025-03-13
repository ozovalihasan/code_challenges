# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer}
def min_zero_array(nums, queries)
  query_index = -1
  sum_arr = Array.new(nums.size + 1, 0)
  
  nums.each_with_index do |num, index|
    until sum_arr[index] >= num
      return - 1 if query_index == queries.length - 1

      query_index += 1
      
      start_index, end_index, val = queries[query_index]

      if start_index <= index && index <= end_index
        sum_arr[index] += val
      elsif start_index > index
        sum_arr[start_index] += val
      end

      sum_arr[end_index + 1] -= val if end_index >= index
    end
    
    sum_arr[index + 1] += sum_arr[index]
  end

  query_index + 1
end
