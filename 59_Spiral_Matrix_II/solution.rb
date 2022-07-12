# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  matrix = [(1..n).to_a]
  (n - 1).times { matrix << [] }

  column = n - 1
  row = 0
  count = n
  step = 1

  (n - 1).downto(1) do |number|
    number.times do
      row += step
      count += 1
      matrix[row][column] = count
    end

    number.times do
      column -= step
      count += 1
      matrix[row][column] = count
    end

    step *= -1
  end

  matrix
end
