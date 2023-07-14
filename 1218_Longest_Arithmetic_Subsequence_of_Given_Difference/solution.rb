# @param {Integer[]} arr
# @param {Integer} difference
# @return {Integer}
def longest_subsequence(arr, difference)
  checked = Hash.new(0)

  arr.each {|num| checked[num] = checked[num - difference] + 1 }

  checked.values.max
end