# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
  sum = 0
  
  0.upto(mat.size - 1) do |index|
    sum += mat[ index ][ index ] + mat[ -index-1 ][ index ]
  end
  
  sum -= mat[ mat.size / 2 ][ mat.size / 2 ] if mat.size.odd?
  sum
end