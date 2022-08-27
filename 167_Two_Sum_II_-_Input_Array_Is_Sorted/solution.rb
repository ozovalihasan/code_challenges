# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  
  numbers.each_with_index.with_object do |(num, index), hash|
    return [hash[target - num] + 1, index + 1] if hash[target - num]
    hash[num] = index
  end
end