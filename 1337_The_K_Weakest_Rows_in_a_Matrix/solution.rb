# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  mat.map.with_index {|row, index| [row.count(1), index]}
     .min(k)
     .map(&:last)
end