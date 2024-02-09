# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
  distinct_values = arr.tally.filter { |str, freq| freq == 1}.keys
  distinct_values[k - 1] || ""
end