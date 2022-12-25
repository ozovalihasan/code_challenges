# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
  sum_arr = sum_arr_of_sorted_arr(nums)
  
  queries.map { |num| find_index_greater_than(num, sum_arr) }
end

def find_index_greater_than(num, arr)
  arr.bsearch_index {|val| val > num} || arr.size
end

def sum_arr_of_sorted_arr(arr)
  arr.sort.each_with_object([]) { |num, sum_arr| sum_arr << (sum_arr.last || 0) + num }
end