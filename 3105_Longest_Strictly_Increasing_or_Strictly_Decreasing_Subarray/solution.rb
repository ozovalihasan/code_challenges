# @param {Integer[]} nums
# @return {Integer}
def longest_monotonic_subarray(nums)
  result_decreasing = 1
  result_increasing = 1
  results = []
  nums.each_cons(2).map do |start_point, end_point|
    if start_point > end_point
      result_decreasing += 1
      result_increasing = 1
    elsif start_point == end_point
      result_decreasing = 1
      result_increasing = 1
    else 
      result_decreasing = 1
      result_increasing += 1
    end

    results << result_increasing << result_decreasing
  end
  
  results.max || 1
end
