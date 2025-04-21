# @param {Integer[]} differences
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def number_of_arrays(differences, lower, upper)
  arr = [0]
  differences.each do |diff|
    arr << (arr[-1] + diff)
  end      
  min = arr.min
  max = arr.max
  range = max - min

  [(upper - lower) - range + 1, 0].max
end