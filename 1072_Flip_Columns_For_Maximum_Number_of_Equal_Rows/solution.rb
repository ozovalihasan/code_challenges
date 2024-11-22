# @param {Integer[][]} matrix
# @return {Integer}
FLIPS = { 0 => 1, 1 => 0 }.freeze
def max_equal_rows_after_flips(matrix)
  matrix.map! do |row|
    if row[0].zero?
      row
    else
      row.map! { |cell| FLIPS[cell] }
    end
  end
  
  matrix.tally.values.max
end
