# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer}
def make_array_increasing(arr1, arr2)
  @arr1 = arr1
  @arr2 = arr2.sort
  @cache_min_previous_returning_nil = []
  @cache2 = Array.new(arr1.size + 1) {{}}

  check_index(0, -Float::INFINITY) || -1
end

def check_index(index, previous)
  return if @cache_min_previous_returning_nil[index] && @cache_min_previous_returning_nil[index] <= previous
  return @cache2[index][previous] if @cache2[index][previous]

  num1 = @arr1[index]
  return @cache2[index][previous] = 0 unless num1

  result = []
  if num1 > previous
    subresult = check_index(index + 1, num1)
    result << subresult if subresult
  end

  num2 = @arr2.bsearch {|num| num > previous}
  if num2
    subresult = check_index(index + 1, num2)
    result << subresult + 1 if subresult
  end

  if result.empty?
    @cache_min_previous_returning_nil[index] = previous 
  end
  @cache2[index][previous] = result.min
end