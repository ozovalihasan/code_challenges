# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  result = [[1]]

  (1..num_rows - 1).each do |row_index|
    last_row = result.last

    result << 1.upto(row_index - 1).map do |i|
                last_row[i - 1] + last_row[i]
              end

    result.last.unshift(1).push(1)
  end

  result
end
