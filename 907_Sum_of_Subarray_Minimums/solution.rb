MOD = 10**9 + 7

# @param {Integer[]} arr
# @return {Integer}
def sum_subarray_mins(arr)
  used = [-1, arr.size]
  
  arr.map!.with_index do |num, index|
    [num, index]
  end

  result = 0
  arr.sort_by(&:first).each do |num, index|
    used_index = used.bsearch_index {|used_index| used_index > index }

    result += num * (used[used_index] - index - 1) * (index - used[used_index - 1] - 1) 
    result += num * (used[used_index] - used[used_index - 1] - 1 )

    used.insert(used_index, index)
  end

  result % MOD
end