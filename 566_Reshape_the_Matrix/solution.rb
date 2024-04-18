# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  return mat if (mat.size * mat.first.size) != (r * c)

  mat.flatten.each_slice(c).to_a
end