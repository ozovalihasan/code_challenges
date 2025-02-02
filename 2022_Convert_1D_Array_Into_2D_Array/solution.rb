# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
  return [] if (m * n) != original.size

  result = []
  m.times do |i|
    result << original[i * n, n]
  end
  result
end
