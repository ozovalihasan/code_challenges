# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Boolean[]}
def is_array_special(nums, queries) 
  sum = [0]
  nums.each_cons(2) do |first_num, second_num| 
    next sum << (sum.last + 1) if (first_num + second_num).even?
      
    sum << sum.last
  end

  queries.map do |(start_point, end_point)|
    sum[end_point] == sum[start_point]
  end
end
