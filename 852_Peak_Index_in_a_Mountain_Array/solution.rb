# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  (0...arr.size).bsearch {|index| arr[index] > arr[index + 1]}
end