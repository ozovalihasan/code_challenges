# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  result = []

  until matrix.empty?
    result.concat matrix.shift
    result.concat matrix.map(&:pop)
    result.concat (matrix.pop || []).reverse
    result.concat matrix.map(&:shift).reverse
  end

  result.compact
end