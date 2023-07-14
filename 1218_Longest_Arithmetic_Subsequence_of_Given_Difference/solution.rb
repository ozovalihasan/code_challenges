# @param {Integer[]} arr
# @param {Integer} difference
# @return {Integer}
def longest_subsequence(arr, difference)
  checked = {}

  arr.each do |num|
    checked[num] = (checked[num - difference] || 0 ) + 1
  end

  checked.values.max
end