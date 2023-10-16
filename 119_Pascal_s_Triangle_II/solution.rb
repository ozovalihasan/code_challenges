# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  result = [1]

  1.upto(row_index) do
    result = result.each_cons(2).map(&:sum).unshift(1) << 1
  end

  result
end
