# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def min_operations(nums, queries)
  @nums = nums.sort!
  
  sum = 0
  @sums = [sum]
  nums.each do |num|
    @sums << (sum += num)
  end

  queries.map do |query|
    index = nums.bsearch_index {|num| num > query}
    result = calculate_upper(query, index)

    index = nums.size unless index
    result += calculate_lower(query, index)
  end
end

def calculate_upper(query, index)
  result = 0
  if index
    query_total = (@nums.size - index) * query
    sub_total = @sums.last - @sums[index]
    result = sub_total - query_total
  end
  result
end

def calculate_lower(query, index)
  query_total = index * query
  sub_total = @sums[index]
  query_total - sub_total
end