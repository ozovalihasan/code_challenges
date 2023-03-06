# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
  expected_arr = (1..k + arr.size).to_a
  (expected_arr - arr)[k-1]
end