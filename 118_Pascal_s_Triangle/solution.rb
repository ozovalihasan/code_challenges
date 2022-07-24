# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  result = [[1]]
  2.upto(num_rows) do |_row|
    result << [1, *result.last.each_cons(2).map(&:sum), 1]
  end

  result
end
